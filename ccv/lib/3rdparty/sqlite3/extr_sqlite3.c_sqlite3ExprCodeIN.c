
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_25__ ;
typedef struct TYPE_32__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_32__ {TYPE_4__* pList; } ;
struct TYPE_37__ {int iTable; struct TYPE_37__* pLeft; TYPE_1__ x; } ;
struct TYPE_36__ {int nExpr; TYPE_2__* a; } ;
struct TYPE_35__ {TYPE_25__* db; scalar_t__ nErr; int * pVdbe; } ;
struct TYPE_34__ {TYPE_5__* pExpr; } ;
struct TYPE_33__ {scalar_t__ mallocFailed; } ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ ExprList ;
typedef TYPE_5__ Expr ;
typedef int CollSeq ;


 int EP_xIsSelect ;
 int ExprHasProperty (TYPE_5__*,int ) ;
 int IN_INDEX_EPH ;
 int IN_INDEX_INDEX_ASC ;
 int IN_INDEX_INDEX_DESC ;
 int IN_INDEX_MEMBERSHIP ;
 int IN_INDEX_NOOP ;
 int IN_INDEX_NOOP_OK ;
 int IN_INDEX_ROWID ;
 int OP_Affinity ;
 int OP_BitAnd ;
 int OP_Column ;
 int OP_Copy ;
 int OP_Eq ;
 int OP_Found ;
 int OP_Goto ;
 int OP_IsNull ;
 int OP_Ne ;
 int OP_Next ;
 int OP_NotFound ;
 int OP_NotNull ;
 int OP_Rewind ;
 int OP_SeekRowid ;
 int P4_COLLSEQ ;
 char SQLITE_JUMPIFNULL ;
 int VdbeComment (int *) ;
 int VdbeCoverage (int *) ;
 int VdbeCoverageIf (int *,int) ;
 int VdbeNoopComment (int *) ;
 int assert (int) ;
 int exprCodeVector (TYPE_3__*,TYPE_5__*,int*) ;
 char* exprINAffinity (TYPE_3__*,TYPE_5__*) ;
 int sqlite3DbFree (TYPE_25__*,...) ;
 scalar_t__ sqlite3DbMallocZero (TYPE_25__*,int) ;
 int sqlite3ExprCachePop (TYPE_3__*) ;
 int sqlite3ExprCachePush (TYPE_3__*) ;
 scalar_t__ sqlite3ExprCanBeNull (TYPE_5__*) ;
 scalar_t__ sqlite3ExprCheckIN (TYPE_3__*,TYPE_5__*) ;
 int sqlite3ExprCodeTemp (TYPE_3__*,TYPE_5__*,int*) ;
 int * sqlite3ExprCollSeq (TYPE_3__*,TYPE_5__*) ;
 int sqlite3ExprVectorSize (TYPE_5__*) ;
 int sqlite3FindInIndex (TYPE_3__*,TYPE_5__*,int,int*,int*) ;
 int sqlite3GetTempRange (TYPE_3__*,int) ;
 int sqlite3GetTempReg (TYPE_3__*) ;
 int sqlite3ReleaseTempReg (TYPE_3__*,int) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int,void*,int) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,int,int,int) ;
 int sqlite3VdbeChangeP5 (int *,char) ;
 int sqlite3VdbeGoto (int *,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeMakeLabel (int *) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 TYPE_5__* sqlite3VectorFieldSubexpr (TYPE_5__*,int) ;

__attribute__((used)) static void sqlite3ExprCodeIN(
  Parse *pParse,
  Expr *pExpr,
  int destIfFalse,
  int destIfNull
){
  int rRhsHasNull = 0;
  int eType;
  int rLhs;
  int rLhsOrig;
  Vdbe *v;
  int *aiMap = 0;
  char *zAff = 0;
  int nVector;
  int iDummy;
  Expr *pLeft;
  int i;
  int destStep2;
  int destStep6 = 0;
  int addrTruthOp;
  int destNotNull;
  int addrTop;

  pLeft = pExpr->pLeft;
  if( sqlite3ExprCheckIN(pParse, pExpr) ) return;
  zAff = exprINAffinity(pParse, pExpr);
  nVector = sqlite3ExprVectorSize(pExpr->pLeft);
  aiMap = (int*)sqlite3DbMallocZero(
      pParse->db, nVector*(sizeof(int) + sizeof(char)) + 1
  );
  if( pParse->db->mallocFailed ) goto sqlite3ExprCodeIN_oom_error;





  v = pParse->pVdbe;
  assert( v!=0 );
  VdbeNoopComment((v, "begin IN expr"));
  eType = sqlite3FindInIndex(pParse, pExpr,
                             IN_INDEX_MEMBERSHIP | IN_INDEX_NOOP_OK,
                             destIfFalse==destIfNull ? 0 : &rRhsHasNull, aiMap);

  assert( pParse->nErr || nVector==1 || eType==IN_INDEX_EPH
       || eType==IN_INDEX_INDEX_ASC || eType==IN_INDEX_INDEX_DESC
  );
  sqlite3ExprCachePush(pParse);
  rLhsOrig = exprCodeVector(pParse, pLeft, &iDummy);
  for(i=0; i<nVector && aiMap[i]==i; i++){}
  if( i==nVector ){

    rLhs = rLhsOrig;
  }else{

    rLhs = sqlite3GetTempRange(pParse, nVector);
    for(i=0; i<nVector; i++){
      sqlite3VdbeAddOp3(v, OP_Copy, rLhsOrig+i, rLhs+aiMap[i], 0);
    }
  }







  if( eType==IN_INDEX_NOOP ){
    ExprList *pList = pExpr->x.pList;
    CollSeq *pColl = sqlite3ExprCollSeq(pParse, pExpr->pLeft);
    int labelOk = sqlite3VdbeMakeLabel(v);
    int r2, regToFree;
    int regCkNull = 0;
    int ii;
    assert( !ExprHasProperty(pExpr, EP_xIsSelect) );
    if( destIfNull!=destIfFalse ){
      regCkNull = sqlite3GetTempReg(pParse);
      sqlite3VdbeAddOp3(v, OP_BitAnd, rLhs, rLhs, regCkNull);
    }
    for(ii=0; ii<pList->nExpr; ii++){
      r2 = sqlite3ExprCodeTemp(pParse, pList->a[ii].pExpr, &regToFree);
      if( regCkNull && sqlite3ExprCanBeNull(pList->a[ii].pExpr) ){
        sqlite3VdbeAddOp3(v, OP_BitAnd, regCkNull, r2, regCkNull);
      }
      if( ii<pList->nExpr-1 || destIfNull!=destIfFalse ){
        sqlite3VdbeAddOp4(v, OP_Eq, rLhs, labelOk, r2,
                          (void*)pColl, P4_COLLSEQ);
        VdbeCoverageIf(v, ii<pList->nExpr-1);
        VdbeCoverageIf(v, ii==pList->nExpr-1);
        sqlite3VdbeChangeP5(v, zAff[0]);
      }else{
        assert( destIfNull==destIfFalse );
        sqlite3VdbeAddOp4(v, OP_Ne, rLhs, destIfFalse, r2,
                          (void*)pColl, P4_COLLSEQ); VdbeCoverage(v);
        sqlite3VdbeChangeP5(v, zAff[0] | SQLITE_JUMPIFNULL);
      }
      sqlite3ReleaseTempReg(pParse, regToFree);
    }
    if( regCkNull ){
      sqlite3VdbeAddOp2(v, OP_IsNull, regCkNull, destIfNull); VdbeCoverage(v);
      sqlite3VdbeGoto(v, destIfFalse);
    }
    sqlite3VdbeResolveLabel(v, labelOk);
    sqlite3ReleaseTempReg(pParse, regCkNull);
    goto sqlite3ExprCodeIN_finished;
  }





  if( destIfNull==destIfFalse ){
    destStep2 = destIfFalse;
  }else{
    destStep2 = destStep6 = sqlite3VdbeMakeLabel(v);
  }
  for(i=0; i<nVector; i++){
    Expr *p = sqlite3VectorFieldSubexpr(pExpr->pLeft, i);
    if( sqlite3ExprCanBeNull(p) ){
      sqlite3VdbeAddOp2(v, OP_IsNull, rLhs+i, destStep2);
      VdbeCoverage(v);
    }
  }





  if( eType==IN_INDEX_ROWID ){



    sqlite3VdbeAddOp3(v, OP_SeekRowid, pExpr->iTable, destIfFalse, rLhs);
    VdbeCoverage(v);
    addrTruthOp = sqlite3VdbeAddOp0(v, OP_Goto);
  }else{
    sqlite3VdbeAddOp4(v, OP_Affinity, rLhs, nVector, 0, zAff, nVector);
    if( destIfFalse==destIfNull ){

      sqlite3VdbeAddOp4Int(v, OP_NotFound, pExpr->iTable, destIfFalse,
                           rLhs, nVector); VdbeCoverage(v);
      goto sqlite3ExprCodeIN_finished;
    }

    addrTruthOp = sqlite3VdbeAddOp4Int(v, OP_Found, pExpr->iTable, 0,
                                      rLhs, nVector); VdbeCoverage(v);
  }




  if( rRhsHasNull && nVector==1 ){
    sqlite3VdbeAddOp2(v, OP_NotNull, rRhsHasNull, destIfFalse);
    VdbeCoverage(v);
  }




  if( destIfFalse==destIfNull ) sqlite3VdbeGoto(v, destIfFalse);
  if( destStep6 ) sqlite3VdbeResolveLabel(v, destStep6);
  addrTop = sqlite3VdbeAddOp2(v, OP_Rewind, pExpr->iTable, destIfFalse);
  VdbeCoverage(v);
  if( nVector>1 ){
    destNotNull = sqlite3VdbeMakeLabel(v);
  }else{


    destNotNull = destIfFalse;
  }
  for(i=0; i<nVector; i++){
    Expr *p;
    CollSeq *pColl;
    int r3 = sqlite3GetTempReg(pParse);
    p = sqlite3VectorFieldSubexpr(pLeft, i);
    pColl = sqlite3ExprCollSeq(pParse, p);
    sqlite3VdbeAddOp3(v, OP_Column, pExpr->iTable, i, r3);
    sqlite3VdbeAddOp4(v, OP_Ne, rLhs+i, destNotNull, r3,
                      (void*)pColl, P4_COLLSEQ);
    VdbeCoverage(v);
    sqlite3ReleaseTempReg(pParse, r3);
  }
  sqlite3VdbeAddOp2(v, OP_Goto, 0, destIfNull);
  if( nVector>1 ){
    sqlite3VdbeResolveLabel(v, destNotNull);
    sqlite3VdbeAddOp2(v, OP_Next, pExpr->iTable, addrTop+1);
    VdbeCoverage(v);



    sqlite3VdbeAddOp2(v, OP_Goto, 0, destIfFalse);
  }


  sqlite3VdbeJumpHere(v, addrTruthOp);

sqlite3ExprCodeIN_finished:
  if( rLhs!=rLhsOrig ) sqlite3ReleaseTempReg(pParse, rLhs);
  sqlite3ExprCachePop(pParse);
  VdbeComment((v, "end IN expr"));
sqlite3ExprCodeIN_oom_error:
  sqlite3DbFree(pParse->db, aiMap);
  sqlite3DbFree(pParse->db, zAff);
}

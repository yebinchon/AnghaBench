
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_29__ {int p1; int p2; int opcode; } ;
typedef TYPE_2__ VdbeOp ;
typedef int Vdbe ;
struct TYPE_34__ {int eTnctType; int tabTnct; int addrTnct; } ;
struct TYPE_33__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_32__ {int nMem; int * pVdbe; } ;
struct TYPE_31__ {int iLimit; } ;
struct TYPE_30__ {int eDest; int iSDParm; int iSdst; int nSdst; int affSdst; } ;
struct TYPE_28__ {int pExpr; } ;
typedef TYPE_3__ SelectDest ;
typedef TYPE_4__ Select ;
typedef TYPE_5__ Parse ;
typedef TYPE_6__ ExprList ;
typedef TYPE_7__ DistinctCtx ;
typedef int CollSeq ;


 scalar_t__ NEVER (int) ;
 int OPFLAG_APPEND ;
 int OP_Column ;
 int OP_Copy ;
 int OP_Eq ;
 int OP_IdxDelete ;
 int OP_IdxInsert ;
 int OP_IfZero ;
 int OP_Insert ;
 int OP_Integer ;
 int OP_MakeRecord ;
 int OP_Ne ;
 int OP_NewRowid ;
 int OP_Null ;
 int OP_ResultRow ;
 int OP_Yield ;
 int P4_COLLSEQ ;
 int SQLITE_NULLEQ ;

 int SRT_Discard ;
 int WHERE_DISTINCT_NOOP ;


 int WHERE_DISTINCT_UNORDERED ;
 int assert (int) ;
 int codeDistinct (TYPE_5__*,int ,int,int,int) ;
 int codeOffset (int *,TYPE_4__*,int) ;
 int pushOntoSorter (TYPE_5__*,TYPE_6__*,TYPE_4__*,int) ;
 int sqlite3CompareAffinity (int ,int ) ;
 int sqlite3ExprCacheAffinityChange (TYPE_5__*,int,int) ;
 int sqlite3ExprCacheClear (TYPE_5__*) ;
 int sqlite3ExprCodeExprList (TYPE_5__*,TYPE_6__*,int,int) ;
 int sqlite3ExprCodeMove (TYPE_5__*,int,int,int) ;
 int * sqlite3ExprCollSeq (TYPE_5__*,int ) ;
 int sqlite3GetTempReg (TYPE_5__*) ;
 int sqlite3ReleaseTempReg (TYPE_5__*,int) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int,int *,int) ;
 int sqlite3VdbeChangeP4 (int *,int,char const*,int ) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeChangeToNoop (int *,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 TYPE_2__* sqlite3VdbeGetOp (int *,int ) ;
 int testcase (int) ;

__attribute__((used)) static void selectInnerLoop(
  Parse *pParse,
  Select *p,
  ExprList *pEList,
  int srcTab,
  int nColumn,
  ExprList *pOrderBy,
  DistinctCtx *pDistinct,
  SelectDest *pDest,
  int iContinue,
  int iBreak
){
  Vdbe *v = pParse->pVdbe;
  int i;
  int hasDistinct;
  int regResult;
  int eDest = pDest->eDest;
  int iParm = pDest->iSDParm;
  int nResultCol;

  assert( v );
  if( NEVER(v==0) ) return;
  assert( pEList!=0 );
  hasDistinct = pDistinct ? pDistinct->eTnctType : WHERE_DISTINCT_NOOP;
  if( pOrderBy==0 && !hasDistinct ){
    codeOffset(v, p, iContinue);
  }



  if( nColumn>0 ){
    nResultCol = nColumn;
  }else{
    nResultCol = pEList->nExpr;
  }
  if( pDest->iSdst==0 ){
    pDest->iSdst = pParse->nMem+1;
    pDest->nSdst = nResultCol;
    pParse->nMem += nResultCol;
  }else{
    assert( pDest->nSdst==nResultCol );
  }
  regResult = pDest->iSdst;
  if( nColumn>0 ){
    for(i=0; i<nColumn; i++){
      sqlite3VdbeAddOp3(v, OP_Column, srcTab, i, regResult+i);
    }
  }else if( eDest!=135 ){



    sqlite3ExprCacheClear(pParse);
    sqlite3ExprCodeExprList(pParse, pEList, regResult, eDest==133);
  }
  nColumn = nResultCol;





  if( hasDistinct ){
    assert( pEList!=0 );
    assert( pEList->nExpr==nColumn );
    switch( pDistinct->eTnctType ){
      case 129: {
        VdbeOp *pOp;
        int iJump;
        int regPrev;


        regPrev = pParse->nMem+1;
        pParse->nMem += nColumn;







        sqlite3VdbeChangeToNoop(v, pDistinct->addrTnct);
        pOp = sqlite3VdbeGetOp(v, pDistinct->addrTnct);
        pOp->opcode = OP_Null;
        pOp->p1 = 1;
        pOp->p2 = regPrev;

        iJump = sqlite3VdbeCurrentAddr(v) + nColumn;
        for(i=0; i<nColumn; i++){
          CollSeq *pColl = sqlite3ExprCollSeq(pParse, pEList->a[i].pExpr);
          if( i<nColumn-1 ){
            sqlite3VdbeAddOp3(v, OP_Ne, regResult+i, iJump, regPrev+i);
          }else{
            sqlite3VdbeAddOp3(v, OP_Eq, regResult+i, iContinue, regPrev+i);
          }
          sqlite3VdbeChangeP4(v, -1, (const char *)pColl, P4_COLLSEQ);
          sqlite3VdbeChangeP5(v, SQLITE_NULLEQ);
        }
        assert( sqlite3VdbeCurrentAddr(v)==iJump );
        sqlite3VdbeAddOp3(v, OP_Copy, regResult, regPrev, nColumn-1);
        break;
      }

      case 128: {
        sqlite3VdbeChangeToNoop(v, pDistinct->addrTnct);
        break;
      }

      default: {
        assert( pDistinct->eTnctType==WHERE_DISTINCT_UNORDERED );
        codeDistinct(pParse, pDistinct->tabTnct, iContinue, nColumn, regResult);
        break;
      }
    }
    if( pOrderBy==0 ){
      codeOffset(v, p, iContinue);
    }
  }

  switch( eDest ){




    case 130: {
      int r1;
      r1 = sqlite3GetTempReg(pParse);
      sqlite3VdbeAddOp3(v, OP_MakeRecord, regResult, nColumn, r1);
      sqlite3VdbeAddOp2(v, OP_IdxInsert, iParm, r1);
      sqlite3ReleaseTempReg(pParse, r1);
      break;
    }





    case 136: {
      sqlite3VdbeAddOp3(v, OP_IdxDelete, iParm, regResult, nColumn);
      break;
    }




    case 131:
    case 137: {
      int r1 = sqlite3GetTempReg(pParse);
      testcase( eDest==131 );
      testcase( eDest==137 );
      sqlite3VdbeAddOp3(v, OP_MakeRecord, regResult, nColumn, r1);
      if( pOrderBy ){
        pushOntoSorter(pParse, pOrderBy, p, r1);
      }else{
        int r2 = sqlite3GetTempReg(pParse);
        sqlite3VdbeAddOp2(v, OP_NewRowid, iParm, r2);
        sqlite3VdbeAddOp3(v, OP_Insert, iParm, r1, r2);
        sqlite3VdbeChangeP5(v, OPFLAG_APPEND);
        sqlite3ReleaseTempReg(pParse, r2);
      }
      sqlite3ReleaseTempReg(pParse, r1);
      break;
    }






    case 132: {
      assert( nColumn==1 );
      pDest->affSdst =
                  sqlite3CompareAffinity(pEList->a[0].pExpr, pDest->affSdst);
      if( pOrderBy ){




        pushOntoSorter(pParse, pOrderBy, p, regResult);
      }else{
        int r1 = sqlite3GetTempReg(pParse);
        sqlite3VdbeAddOp4(v, OP_MakeRecord, regResult,1,r1, &pDest->affSdst, 1);
        sqlite3ExprCacheAffinityChange(pParse, regResult, 1);
        sqlite3VdbeAddOp2(v, OP_IdxInsert, iParm, r1);
        sqlite3ReleaseTempReg(pParse, r1);
      }
      break;
    }



    case 135: {
      sqlite3VdbeAddOp2(v, OP_Integer, 1, iParm);

      break;
    }





    case 134: {
      assert( nColumn==1 );
      if( pOrderBy ){
        pushOntoSorter(pParse, pOrderBy, p, regResult);
      }else{
        sqlite3ExprCodeMove(pParse, regResult, iParm, 1);

      }
      break;
    }






    case 138:
    case 133: {
      testcase( eDest==138 );
      testcase( eDest==133 );
      if( pOrderBy ){
        int r1 = sqlite3GetTempReg(pParse);
        sqlite3VdbeAddOp3(v, OP_MakeRecord, regResult, nColumn, r1);
        pushOntoSorter(pParse, pOrderBy, p, r1);
        sqlite3ReleaseTempReg(pParse, r1);
      }else if( eDest==138 ){
        sqlite3VdbeAddOp1(v, OP_Yield, pDest->iSDParm);
      }else{
        sqlite3VdbeAddOp2(v, OP_ResultRow, regResult, nColumn);
        sqlite3ExprCacheAffinityChange(pParse, regResult, nColumn);
      }
      break;
    }







    default: {
      assert( eDest==SRT_Discard );
      break;
    }

  }





  if( pOrderBy==0 && p->iLimit ){
    sqlite3VdbeAddOp3(v, OP_IfZero, p->iLimit, iBreak, -1);
  }
}

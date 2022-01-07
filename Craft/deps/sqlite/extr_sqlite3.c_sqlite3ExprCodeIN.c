
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_14__ {int iTable; int pLeft; } ;
struct TYPE_13__ {int * pVdbe; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ Expr ;


 int IN_INDEX_ROWID ;
 int OP_AddImm ;
 int OP_Affinity ;
 int OP_Found ;
 int OP_Goto ;
 int OP_If ;
 int OP_Integer ;
 int OP_IsNull ;
 int OP_MustBeInt ;
 int OP_NotExists ;
 int OP_NotFound ;
 int OP_NotNull ;
 int OP_Rewind ;
 int VdbeComment (int *) ;
 int VdbeNoopComment (int *) ;
 int assert (int) ;
 char comparisonAffinity (TYPE_2__*) ;
 int sqlite3ExprCachePop (TYPE_1__*,int) ;
 int sqlite3ExprCachePush (TYPE_1__*) ;
 int sqlite3ExprCode (TYPE_1__*,int ,int) ;
 int sqlite3FindInIndex (TYPE_1__*,TYPE_2__*,int*) ;
 int sqlite3GetTempReg (TYPE_1__*) ;
 int sqlite3ReleaseTempReg (TYPE_1__*,int) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int ,char*,int) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,int,int,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;

__attribute__((used)) static void sqlite3ExprCodeIN(
  Parse *pParse,
  Expr *pExpr,
  int destIfFalse,
  int destIfNull
){
  int rRhsHasNull = 0;
  char affinity;
  int eType;
  int r1;
  Vdbe *v;




  v = pParse->pVdbe;
  assert( v!=0 );
  VdbeNoopComment((v, "begin IN expr"));
  eType = sqlite3FindInIndex(pParse, pExpr, &rRhsHasNull);





  affinity = comparisonAffinity(pExpr);



  sqlite3ExprCachePush(pParse);
  r1 = sqlite3GetTempReg(pParse);
  sqlite3ExprCode(pParse, pExpr->pLeft, r1);




  if( destIfNull==destIfFalse ){


    sqlite3VdbeAddOp2(v, OP_IsNull, r1, destIfNull);
  }else{
    int addr1 = sqlite3VdbeAddOp1(v, OP_NotNull, r1);
    sqlite3VdbeAddOp2(v, OP_Rewind, pExpr->iTable, destIfFalse);
    sqlite3VdbeAddOp2(v, OP_Goto, 0, destIfNull);
    sqlite3VdbeJumpHere(v, addr1);
  }

  if( eType==IN_INDEX_ROWID ){


    sqlite3VdbeAddOp2(v, OP_MustBeInt, r1, destIfFalse);
    sqlite3VdbeAddOp3(v, OP_NotExists, pExpr->iTable, destIfFalse, r1);
  }else{


    sqlite3VdbeAddOp4(v, OP_Affinity, r1, 1, 0, &affinity, 1);







    if( rRhsHasNull==0 || destIfFalse==destIfNull ){







      sqlite3VdbeAddOp4Int(v, OP_NotFound, pExpr->iTable, destIfFalse, r1, 1);

    }else{




      int j1, j2, j3;





      j1 = sqlite3VdbeAddOp4Int(v, OP_Found, pExpr->iTable, 0, r1, 1);







      j2 = sqlite3VdbeAddOp1(v, OP_NotNull, rRhsHasNull);
      j3 = sqlite3VdbeAddOp4Int(v, OP_Found, pExpr->iTable, 0, rRhsHasNull, 1);
      sqlite3VdbeAddOp2(v, OP_Integer, -1, rRhsHasNull);
      sqlite3VdbeJumpHere(v, j3);
      sqlite3VdbeAddOp2(v, OP_AddImm, rRhsHasNull, 1);
      sqlite3VdbeJumpHere(v, j2);




      sqlite3VdbeAddOp2(v, OP_If, rRhsHasNull, destIfNull);
      sqlite3VdbeAddOp2(v, OP_Goto, 0, destIfFalse);




      sqlite3VdbeJumpHere(v, j1);
    }
  }
  sqlite3ReleaseTempReg(pParse, r1);
  sqlite3ExprCachePop(pParse, 1);
  VdbeComment((v, "end IN expr"));
}

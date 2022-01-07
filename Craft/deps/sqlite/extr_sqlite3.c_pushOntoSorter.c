
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_17__ {int nExpr; int iECursor; } ;
struct TYPE_16__ {int * pVdbe; } ;
struct TYPE_15__ {int selFlags; int iLimit; int iOffset; } ;
typedef TYPE_1__ Select ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ ExprList ;


 int OP_AddImm ;
 int OP_Delete ;
 int OP_Goto ;
 int OP_IdxInsert ;
 int OP_IfZero ;
 int OP_Last ;
 int OP_MakeRecord ;
 int OP_Sequence ;
 int OP_SorterInsert ;
 int SF_UseSorter ;
 int sqlite3ExprCacheClear (TYPE_2__*) ;
 int sqlite3ExprCodeExprList (TYPE_2__*,TYPE_3__*,int,int ) ;
 int sqlite3ExprCodeMove (TYPE_2__*,int,int,int) ;
 int sqlite3GetTempRange (TYPE_2__*,int) ;
 int sqlite3GetTempReg (TYPE_2__*) ;
 int sqlite3ReleaseTempRange (TYPE_2__*,int,int) ;
 int sqlite3ReleaseTempReg (TYPE_2__*,int) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;

__attribute__((used)) static void pushOntoSorter(
  Parse *pParse,
  ExprList *pOrderBy,
  Select *pSelect,
  int regData
){
  Vdbe *v = pParse->pVdbe;
  int nExpr = pOrderBy->nExpr;
  int regBase = sqlite3GetTempRange(pParse, nExpr+2);
  int regRecord = sqlite3GetTempReg(pParse);
  int op;
  sqlite3ExprCacheClear(pParse);
  sqlite3ExprCodeExprList(pParse, pOrderBy, regBase, 0);
  sqlite3VdbeAddOp2(v, OP_Sequence, pOrderBy->iECursor, regBase+nExpr);
  sqlite3ExprCodeMove(pParse, regData, regBase+nExpr+1, 1);
  sqlite3VdbeAddOp3(v, OP_MakeRecord, regBase, nExpr + 2, regRecord);
  if( pSelect->selFlags & SF_UseSorter ){
    op = OP_SorterInsert;
  }else{
    op = OP_IdxInsert;
  }
  sqlite3VdbeAddOp2(v, op, pOrderBy->iECursor, regRecord);
  sqlite3ReleaseTempReg(pParse, regRecord);
  sqlite3ReleaseTempRange(pParse, regBase, nExpr+2);
  if( pSelect->iLimit ){
    int addr1, addr2;
    int iLimit;
    if( pSelect->iOffset ){
      iLimit = pSelect->iOffset+1;
    }else{
      iLimit = pSelect->iLimit;
    }
    addr1 = sqlite3VdbeAddOp1(v, OP_IfZero, iLimit);
    sqlite3VdbeAddOp2(v, OP_AddImm, iLimit, -1);
    addr2 = sqlite3VdbeAddOp0(v, OP_Goto);
    sqlite3VdbeJumpHere(v, addr1);
    sqlite3VdbeAddOp1(v, OP_Last, pOrderBy->iECursor);
    sqlite3VdbeAddOp1(v, OP_Delete, pOrderBy->iECursor);
    sqlite3VdbeJumpHere(v, addr2);
  }
}

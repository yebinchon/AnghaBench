
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_16__ {int iECursor; int nExpr; } ;
struct TYPE_15__ {int nMem; int nTab; } ;
struct TYPE_14__ {int selFlags; TYPE_4__* pOrderBy; } ;
struct TYPE_13__ {int eDest; int iSDParm; int iSdst; int affSdst; } ;
typedef TYPE_1__ SelectDest ;
typedef TYPE_2__ Select ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ ExprList ;


 int OPFLAG_APPEND ;
 int OPFLAG_CLEARCACHE ;
 int OP_Close ;
 int OP_Column ;
 int OP_IdxInsert ;
 int OP_Insert ;
 int OP_MakeRecord ;
 int OP_NewRowid ;
 int OP_Next ;
 int OP_OpenPseudo ;
 int OP_ResultRow ;
 int OP_Sort ;
 int OP_SorterData ;
 int OP_SorterNext ;
 int OP_SorterSort ;
 int OP_Yield ;
 int SF_UseSorter ;
 int SRT_Coroutine ;


 int SRT_Output ;


 int assert (int) ;
 int codeOffset (int *,TYPE_2__*,int) ;
 int sqlite3ExprCacheAffinityChange (TYPE_3__*,int,int) ;
 int sqlite3ExprCodeMove (TYPE_3__*,int,int,int) ;
 int sqlite3GetTempReg (TYPE_3__*) ;
 int sqlite3ReleaseTempReg (TYPE_3__*,int) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int,int *,int) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeMakeLabel (int *) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int testcase (int) ;

__attribute__((used)) static void generateSortTail(
  Parse *pParse,
  Select *p,
  Vdbe *v,
  int nColumn,
  SelectDest *pDest
){
  int addrBreak = sqlite3VdbeMakeLabel(v);
  int addrContinue = sqlite3VdbeMakeLabel(v);
  int addr;
  int iTab;
  int pseudoTab = 0;
  ExprList *pOrderBy = p->pOrderBy;

  int eDest = pDest->eDest;
  int iParm = pDest->iSDParm;

  int regRow;
  int regRowid;

  iTab = pOrderBy->iECursor;
  regRow = sqlite3GetTempReg(pParse);
  if( eDest==SRT_Output || eDest==SRT_Coroutine ){
    pseudoTab = pParse->nTab++;
    sqlite3VdbeAddOp3(v, OP_OpenPseudo, pseudoTab, regRow, nColumn);
    regRowid = 0;
  }else{
    regRowid = sqlite3GetTempReg(pParse);
  }
  if( p->selFlags & SF_UseSorter ){
    int regSortOut = ++pParse->nMem;
    int ptab2 = pParse->nTab++;
    sqlite3VdbeAddOp3(v, OP_OpenPseudo, ptab2, regSortOut, pOrderBy->nExpr+2);
    addr = 1 + sqlite3VdbeAddOp2(v, OP_SorterSort, iTab, addrBreak);
    codeOffset(v, p, addrContinue);
    sqlite3VdbeAddOp2(v, OP_SorterData, iTab, regSortOut);
    sqlite3VdbeAddOp3(v, OP_Column, ptab2, pOrderBy->nExpr+1, regRow);
    sqlite3VdbeChangeP5(v, OPFLAG_CLEARCACHE);
  }else{
    addr = 1 + sqlite3VdbeAddOp2(v, OP_Sort, iTab, addrBreak);
    codeOffset(v, p, addrContinue);
    sqlite3VdbeAddOp3(v, OP_Column, iTab, pOrderBy->nExpr+1, regRow);
  }
  switch( eDest ){
    case 128:
    case 131: {
      testcase( eDest==128 );
      testcase( eDest==131 );
      sqlite3VdbeAddOp2(v, OP_NewRowid, iParm, regRowid);
      sqlite3VdbeAddOp3(v, OP_Insert, iParm, regRow, regRowid);
      sqlite3VdbeChangeP5(v, OPFLAG_APPEND);
      break;
    }

    case 129: {
      assert( nColumn==1 );
      sqlite3VdbeAddOp4(v, OP_MakeRecord, regRow, 1, regRowid,
                        &pDest->affSdst, 1);
      sqlite3ExprCacheAffinityChange(pParse, regRow, 1);
      sqlite3VdbeAddOp2(v, OP_IdxInsert, iParm, regRowid);
      break;
    }
    case 130: {
      assert( nColumn==1 );
      sqlite3ExprCodeMove(pParse, regRow, iParm, 1);

      break;
    }

    default: {
      int i;
      assert( eDest==SRT_Output || eDest==SRT_Coroutine );
      testcase( eDest==SRT_Output );
      testcase( eDest==SRT_Coroutine );
      for(i=0; i<nColumn; i++){
        assert( regRow!=pDest->iSdst+i );
        sqlite3VdbeAddOp3(v, OP_Column, pseudoTab, i, pDest->iSdst+i);
        if( i==0 ){
          sqlite3VdbeChangeP5(v, OPFLAG_CLEARCACHE);
        }
      }
      if( eDest==SRT_Output ){
        sqlite3VdbeAddOp2(v, OP_ResultRow, pDest->iSdst, nColumn);
        sqlite3ExprCacheAffinityChange(pParse, pDest->iSdst, nColumn);
      }else{
        sqlite3VdbeAddOp1(v, OP_Yield, pDest->iSDParm);
      }
      break;
    }
  }
  sqlite3ReleaseTempReg(pParse, regRow);
  sqlite3ReleaseTempReg(pParse, regRowid);



  sqlite3VdbeResolveLabel(v, addrContinue);
  if( p->selFlags & SF_UseSorter ){
    sqlite3VdbeAddOp2(v, OP_SorterNext, iTab, addr);
  }else{
    sqlite3VdbeAddOp2(v, OP_Next, iTab, addr);
  }
  sqlite3VdbeResolveLabel(v, addrBreak);
  if( eDest==SRT_Output || eDest==SRT_Coroutine ){
    sqlite3VdbeAddOp2(v, OP_Close, pseudoTab, 0);
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_22__ {TYPE_1__* db; int * pVdbe; } ;
struct TYPE_21__ {int iLimit; TYPE_3__* pEList; } ;
struct TYPE_20__ {int iSdst; int nSdst; int eDest; int iSDParm; char affSdst; } ;
struct TYPE_19__ {TYPE_2__* a; } ;
struct TYPE_18__ {int pExpr; } ;
struct TYPE_17__ {scalar_t__ mallocFailed; } ;
typedef TYPE_4__ SelectDest ;
typedef TYPE_5__ Select ;
typedef TYPE_6__ Parse ;
typedef int KeyInfo ;


 int OPFLAG_APPEND ;
 int OP_Compare ;
 int OP_Copy ;
 int OP_IdxInsert ;
 int OP_IfNot ;
 int OP_IfZero ;
 int OP_Insert ;
 int OP_Integer ;
 int OP_Jump ;
 int OP_MakeRecord ;
 int OP_NewRowid ;
 int OP_ResultRow ;
 int OP_Return ;
 int OP_Yield ;




 int const SRT_Output ;


 int assert (int) ;
 int codeOffset (int *,TYPE_5__*,int) ;
 char sqlite3CompareAffinity (int ,char) ;
 int sqlite3ExprCacheAffinityChange (TYPE_6__*,int,int) ;
 int sqlite3ExprCodeMove (TYPE_6__*,int,int,int) ;
 int sqlite3GetTempRange (TYPE_6__*,int) ;
 int sqlite3GetTempReg (TYPE_6__*) ;
 int sqlite3ReleaseTempReg (TYPE_6__*,int) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int,char*,int) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeMakeLabel (int *) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int testcase (int) ;

__attribute__((used)) static int generateOutputSubroutine(
  Parse *pParse,
  Select *p,
  SelectDest *pIn,
  SelectDest *pDest,
  int regReturn,
  int regPrev,
  KeyInfo *pKeyInfo,
  int p4type,
  int iBreak
){
  Vdbe *v = pParse->pVdbe;
  int iContinue;
  int addr;

  addr = sqlite3VdbeCurrentAddr(v);
  iContinue = sqlite3VdbeMakeLabel(v);



  if( regPrev ){
    int j1, j2;
    j1 = sqlite3VdbeAddOp1(v, OP_IfNot, regPrev);
    j2 = sqlite3VdbeAddOp4(v, OP_Compare, pIn->iSdst, regPrev+1, pIn->nSdst,
                              (char*)pKeyInfo, p4type);
    sqlite3VdbeAddOp3(v, OP_Jump, j2+2, iContinue, j2+2);
    sqlite3VdbeJumpHere(v, j1);
    sqlite3VdbeAddOp3(v, OP_Copy, pIn->iSdst, regPrev+1, pIn->nSdst-1);
    sqlite3VdbeAddOp2(v, OP_Integer, 1, regPrev);
  }
  if( pParse->db->mallocFailed ) return 0;



  codeOffset(v, p, iContinue);

  switch( pDest->eDest ){


    case 128:
    case 132: {
      int r1 = sqlite3GetTempReg(pParse);
      int r2 = sqlite3GetTempReg(pParse);
      testcase( pDest->eDest==128 );
      testcase( pDest->eDest==132 );
      sqlite3VdbeAddOp3(v, OP_MakeRecord, pIn->iSdst, pIn->nSdst, r1);
      sqlite3VdbeAddOp2(v, OP_NewRowid, pDest->iSDParm, r2);
      sqlite3VdbeAddOp3(v, OP_Insert, pDest->iSDParm, r1, r2);
      sqlite3VdbeChangeP5(v, OPFLAG_APPEND);
      sqlite3ReleaseTempReg(pParse, r2);
      sqlite3ReleaseTempReg(pParse, r1);
      break;
    }






    case 129: {
      int r1;
      assert( pIn->nSdst==1 );
      pDest->affSdst =
         sqlite3CompareAffinity(p->pEList->a[0].pExpr, pDest->affSdst);
      r1 = sqlite3GetTempReg(pParse);
      sqlite3VdbeAddOp4(v, OP_MakeRecord, pIn->iSdst, 1, r1, &pDest->affSdst,1);
      sqlite3ExprCacheAffinityChange(pParse, pIn->iSdst, 1);
      sqlite3VdbeAddOp2(v, OP_IdxInsert, pDest->iSDParm, r1);
      sqlite3ReleaseTempReg(pParse, r1);
      break;
    }
    case 130: {
      assert( pIn->nSdst==1 );
      sqlite3ExprCodeMove(pParse, pIn->iSdst, pDest->iSDParm, 1);

      break;
    }





    case 133: {
      if( pDest->iSdst==0 ){
        pDest->iSdst = sqlite3GetTempRange(pParse, pIn->nSdst);
        pDest->nSdst = pIn->nSdst;
      }
      sqlite3ExprCodeMove(pParse, pIn->iSdst, pDest->iSdst, pDest->nSdst);
      sqlite3VdbeAddOp1(v, OP_Yield, pDest->iSDParm);
      break;
    }
    default: {
      assert( pDest->eDest==SRT_Output );
      sqlite3VdbeAddOp2(v, OP_ResultRow, pIn->iSdst, pIn->nSdst);
      sqlite3ExprCacheAffinityChange(pParse, pIn->iSdst, pIn->nSdst);
      break;
    }
  }



  if( p->iLimit ){
    sqlite3VdbeAddOp3(v, OP_IfZero, p->iLimit, iBreak, -1);
  }



  sqlite3VdbeResolveLabel(v, iContinue);
  sqlite3VdbeAddOp1(v, OP_Return, regReturn);

  return addr;
}

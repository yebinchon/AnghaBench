
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_9__ ;
typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_11__ ;
typedef struct TYPE_27__ TYPE_10__ ;


typedef int u8 ;
typedef int u32 ;
struct SrcList_item {int colUsed; TYPE_7__* pTab; } ;
struct TYPE_31__ {int leftColumn; } ;
struct TYPE_32__ {TYPE_3__ u; TYPE_10__* pExpr; } ;
typedef TYPE_4__ WhereTerm ;
struct TYPE_29__ {TYPE_9__* pIdx; } ;
struct TYPE_30__ {int nEq; int wsFlags; TYPE_1__ u; } ;
struct TYPE_33__ {scalar_t__ iIdxCur; scalar_t__ iTabCur; TYPE_2__ plan; } ;
typedef TYPE_5__ WhereLevel ;
struct TYPE_34__ {size_t nTerm; TYPE_4__* a; } ;
typedef TYPE_6__ WhereClause ;
typedef int Vdbe ;
struct TYPE_35__ {int nCol; int zName; } ;
typedef TYPE_7__ Table ;
struct TYPE_37__ {char** azColl; int* aiColumn; char* zName; int nColumn; TYPE_7__* pTable; int * aSortOrder; } ;
struct TYPE_36__ {int db; int * pVdbe; } ;
struct TYPE_28__ {char* zName; } ;
struct TYPE_27__ {int pRight; int pLeft; } ;
typedef TYPE_8__ Parse ;
typedef int KeyInfo ;
typedef TYPE_9__ Index ;
typedef TYPE_10__ Expr ;
typedef TYPE_11__ CollSeq ;
typedef int Bitmask ;


 scalar_t__ ALWAYS (TYPE_11__*) ;
 int BMS ;
 int OPFLAG_USESEEKRESULT ;
 int OP_IdxInsert ;
 int OP_Next ;
 int OP_OpenAutoindex ;
 int OP_Rewind ;
 int P4_KEYINFO_HANDOFF ;
 int SQLITE_STMTSTATUS_AUTOINDEX ;
 int VdbeComment (int *) ;
 int WHERE_COLUMN_EQ ;
 int WHERE_IDX_ONLY ;
 int WO_EQ ;
 int assert (int) ;
 TYPE_11__* sqlite3BinaryCompareCollSeq (TYPE_8__*,int ,int ) ;
 int sqlite3CodeOnce (TYPE_8__*) ;
 TYPE_9__* sqlite3DbMallocZero (int ,int) ;
 int sqlite3GenerateIndexKey (TYPE_8__*,TYPE_9__*,scalar_t__,int,int) ;
 int sqlite3GetTempReg (TYPE_8__*) ;
 int * sqlite3IndexKeyinfo (TYPE_8__*,TYPE_9__*) ;
 int sqlite3ReleaseTempReg (TYPE_8__*,int) ;
 int sqlite3VdbeAddOp1 (int *,int ,scalar_t__) ;
 int sqlite3VdbeAddOp2 (int *,int ,scalar_t__,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,scalar_t__,int,int ,char*,int ) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 scalar_t__ termCanDriveIndex (TYPE_4__*,struct SrcList_item*,int) ;
 int testcase (int) ;

__attribute__((used)) static void constructAutomaticIndex(
  Parse *pParse,
  WhereClause *pWC,
  struct SrcList_item *pSrc,
  Bitmask notReady,
  WhereLevel *pLevel
){
  int nColumn;
  WhereTerm *pTerm;
  WhereTerm *pWCEnd;
  int nByte;
  Index *pIdx;
  Vdbe *v;
  int addrInit;
  Table *pTable;
  KeyInfo *pKeyinfo;
  int addrTop;
  int regRecord;
  int n;
  int i;
  int mxBitCol;
  CollSeq *pColl;
  Bitmask idxCols;
  Bitmask extraCols;



  v = pParse->pVdbe;
  assert( v!=0 );
  addrInit = sqlite3CodeOnce(pParse);



  nColumn = 0;
  pTable = pSrc->pTab;
  pWCEnd = &pWC->a[pWC->nTerm];
  idxCols = 0;
  for(pTerm=pWC->a; pTerm<pWCEnd; pTerm++){
    if( termCanDriveIndex(pTerm, pSrc, notReady) ){
      int iCol = pTerm->u.leftColumn;
      Bitmask cMask = iCol>=BMS ? ((Bitmask)1)<<(BMS-1) : ((Bitmask)1)<<iCol;
      testcase( iCol==BMS );
      testcase( iCol==BMS-1 );
      if( (idxCols & cMask)==0 ){
        nColumn++;
        idxCols |= cMask;
      }
    }
  }
  assert( nColumn>0 );
  pLevel->plan.nEq = nColumn;
  extraCols = pSrc->colUsed & (~idxCols | (((Bitmask)1)<<(BMS-1)));
  mxBitCol = (pTable->nCol >= BMS-1) ? BMS-1 : pTable->nCol;
  testcase( pTable->nCol==BMS-1 );
  testcase( pTable->nCol==BMS-2 );
  for(i=0; i<mxBitCol; i++){
    if( extraCols & (((Bitmask)1)<<i) ) nColumn++;
  }
  if( pSrc->colUsed & (((Bitmask)1)<<(BMS-1)) ){
    nColumn += pTable->nCol - BMS + 1;
  }
  pLevel->plan.wsFlags |= WHERE_COLUMN_EQ | WHERE_IDX_ONLY | WO_EQ;


  nByte = sizeof(Index);
  nByte += nColumn*sizeof(int);
  nByte += nColumn*sizeof(char*);
  nByte += nColumn;
  pIdx = sqlite3DbMallocZero(pParse->db, nByte);
  if( pIdx==0 ) return;
  pLevel->plan.u.pIdx = pIdx;
  pIdx->azColl = (char**)&pIdx[1];
  pIdx->aiColumn = (int*)&pIdx->azColl[nColumn];
  pIdx->aSortOrder = (u8*)&pIdx->aiColumn[nColumn];
  pIdx->zName = "auto-index";
  pIdx->nColumn = nColumn;
  pIdx->pTable = pTable;
  n = 0;
  idxCols = 0;
  for(pTerm=pWC->a; pTerm<pWCEnd; pTerm++){
    if( termCanDriveIndex(pTerm, pSrc, notReady) ){
      int iCol = pTerm->u.leftColumn;
      Bitmask cMask = iCol>=BMS ? ((Bitmask)1)<<(BMS-1) : ((Bitmask)1)<<iCol;
      if( (idxCols & cMask)==0 ){
        Expr *pX = pTerm->pExpr;
        idxCols |= cMask;
        pIdx->aiColumn[n] = pTerm->u.leftColumn;
        pColl = sqlite3BinaryCompareCollSeq(pParse, pX->pLeft, pX->pRight);
        pIdx->azColl[n] = ALWAYS(pColl) ? pColl->zName : "BINARY";
        n++;
      }
    }
  }
  assert( (u32)n==pLevel->plan.nEq );



  for(i=0; i<mxBitCol; i++){
    if( extraCols & (((Bitmask)1)<<i) ){
      pIdx->aiColumn[n] = i;
      pIdx->azColl[n] = "BINARY";
      n++;
    }
  }
  if( pSrc->colUsed & (((Bitmask)1)<<(BMS-1)) ){
    for(i=BMS-1; i<pTable->nCol; i++){
      pIdx->aiColumn[n] = i;
      pIdx->azColl[n] = "BINARY";
      n++;
    }
  }
  assert( n==nColumn );


  pKeyinfo = sqlite3IndexKeyinfo(pParse, pIdx);
  assert( pLevel->iIdxCur>=0 );
  sqlite3VdbeAddOp4(v, OP_OpenAutoindex, pLevel->iIdxCur, nColumn+1, 0,
                    (char*)pKeyinfo, P4_KEYINFO_HANDOFF);
  VdbeComment((v, "for %s", pTable->zName));


  addrTop = sqlite3VdbeAddOp1(v, OP_Rewind, pLevel->iTabCur);
  regRecord = sqlite3GetTempReg(pParse);
  sqlite3GenerateIndexKey(pParse, pIdx, pLevel->iTabCur, regRecord, 1);
  sqlite3VdbeAddOp2(v, OP_IdxInsert, pLevel->iIdxCur, regRecord);
  sqlite3VdbeChangeP5(v, OPFLAG_USESEEKRESULT);
  sqlite3VdbeAddOp2(v, OP_Next, pLevel->iTabCur, addrTop+1);
  sqlite3VdbeChangeP5(v, SQLITE_STMTSTATUS_AUTOINDEX);
  sqlite3VdbeJumpHere(v, addrTop);
  sqlite3ReleaseTempReg(pParse, regRecord);


  sqlite3VdbeJumpHere(v, addrInit);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int Vdbe ;
struct TYPE_21__ {scalar_t__ iPKey; int nCol; TYPE_2__* aCol; } ;
typedef TYPE_3__ Table ;
struct TYPE_23__ {TYPE_1__* a; } ;
struct TYPE_22__ {int nMem; int nTab; int * db; int * pVdbe; } ;
struct TYPE_20__ {char* zName; } ;
struct TYPE_19__ {int * pExpr; } ;
typedef int SrcList ;
typedef int SelectDest ;
typedef int Select ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ ExprList ;
typedef int Expr ;


 int BTREE_UNORDERED ;
 int OE_Abort ;
 int OE_Default ;
 int OP_Close ;
 int OP_Column ;
 int OP_Next ;
 int OP_OpenEphemeral ;
 int OP_Rewind ;
 int OP_VUpdate ;
 int P4_VTAB ;
 int SRT_Table ;
 int TK_ID ;
 int assert (int) ;
 int * sqlite3Expr (int *,int ,char*) ;
 int * sqlite3ExprDup (int *,int *,int ) ;
 TYPE_5__* sqlite3ExprListAppend (TYPE_4__*,TYPE_5__*,int *) ;
 scalar_t__ sqlite3GetVTable (int *,TYPE_3__*) ;
 int sqlite3MayAbort (TYPE_4__*) ;
 int sqlite3Select (TYPE_4__*,int *,int *) ;
 int sqlite3SelectDelete (int *,int *) ;
 int sqlite3SelectDestInit (int *,int ,int) ;
 int * sqlite3SelectNew (TYPE_4__*,TYPE_5__*,int *,int *,int ,int ,int ,int ,int ,int ) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int,int,char const*,int ) ;
 int sqlite3VdbeChangeP5 (int *,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VtabMakeWritable (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static void updateVirtualTable(
  Parse *pParse,
  SrcList *pSrc,
  Table *pTab,
  ExprList *pChanges,
  Expr *pRowid,
  int *aXRef,
  Expr *pWhere,
  int onError
){
  Vdbe *v = pParse->pVdbe;
  ExprList *pEList = 0;
  Select *pSelect = 0;
  Expr *pExpr;
  int ephemTab;
  int i;
  int addr;
  int iReg;
  sqlite3 *db = pParse->db;
  const char *pVTab = (const char*)sqlite3GetVTable(db, pTab);
  SelectDest dest;




  pEList = sqlite3ExprListAppend(pParse, 0, sqlite3Expr(db, TK_ID, "_rowid_"));
  if( pRowid ){
    pEList = sqlite3ExprListAppend(pParse, pEList,
                                   sqlite3ExprDup(db, pRowid, 0));
  }
  assert( pTab->iPKey<0 );
  for(i=0; i<pTab->nCol; i++){
    if( aXRef[i]>=0 ){
      pExpr = sqlite3ExprDup(db, pChanges->a[aXRef[i]].pExpr, 0);
    }else{
      pExpr = sqlite3Expr(db, TK_ID, pTab->aCol[i].zName);
    }
    pEList = sqlite3ExprListAppend(pParse, pEList, pExpr);
  }
  pSelect = sqlite3SelectNew(pParse, pEList, pSrc, pWhere, 0, 0, 0, 0, 0, 0);




  assert( v );
  ephemTab = pParse->nTab++;
  sqlite3VdbeAddOp2(v, OP_OpenEphemeral, ephemTab, pTab->nCol+1+(pRowid!=0));
  sqlite3VdbeChangeP5(v, BTREE_UNORDERED);



  sqlite3SelectDestInit(&dest, SRT_Table, ephemTab);
  sqlite3Select(pParse, pSelect, &dest);


  iReg = ++pParse->nMem;
  pParse->nMem += pTab->nCol+1;
  addr = sqlite3VdbeAddOp2(v, OP_Rewind, ephemTab, 0);
  sqlite3VdbeAddOp3(v, OP_Column, ephemTab, 0, iReg);
  sqlite3VdbeAddOp3(v, OP_Column, ephemTab, (pRowid?1:0), iReg+1);
  for(i=0; i<pTab->nCol; i++){
    sqlite3VdbeAddOp3(v, OP_Column, ephemTab, i+1+(pRowid!=0), iReg+2+i);
  }
  sqlite3VtabMakeWritable(pParse, pTab);
  sqlite3VdbeAddOp4(v, OP_VUpdate, 0, pTab->nCol+2, iReg, pVTab, P4_VTAB);
  sqlite3VdbeChangeP5(v, onError==OE_Default ? OE_Abort : onError);
  sqlite3MayAbort(pParse);
  sqlite3VdbeAddOp2(v, OP_Next, ephemTab, addr+1);
  sqlite3VdbeJumpHere(v, addr);
  sqlite3VdbeAddOp2(v, OP_Close, ephemTab, 0);


  sqlite3SelectDelete(db, pSelect);
}

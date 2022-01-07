
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {scalar_t__ busy; int imposterTable; } ;
struct TYPE_24__ {TYPE_3__ init; scalar_t__ mallocFailed; } ;
typedef TYPE_4__ sqlite3 ;
typedef int Vdbe ;
typedef int Token ;
struct TYPE_25__ {int nCol; size_t iPKey; scalar_t__ tnum; TYPE_7__* pIndex; int keyConf; TYPE_1__* aCol; } ;
typedef TYPE_5__ Table ;
struct TYPE_28__ {TYPE_2__* a; } ;
struct TYPE_27__ {int nKeyCol; int* aiColumn; int nColumn; int isCovering; int uniqNotNull; scalar_t__ tnum; int * azColl; struct TYPE_27__* pNext; } ;
struct TYPE_26__ {TYPE_5__* pNewTable; int iPkSortOrder; scalar_t__ addrCrTab; int * pVdbe; TYPE_4__* db; } ;
struct TYPE_22__ {int sortOrder; } ;
struct TYPE_21__ {int colFlags; int zName; int notNull; } ;
typedef TYPE_6__ Parse ;
typedef TYPE_7__ Index ;
typedef TYPE_8__ ExprList ;


 int BTREE_BLOBKEY ;
 int COLFLAG_PRIMKEY ;
 scalar_t__ IN_DECLARE_VTAB ;
 scalar_t__ IsPrimaryKeyIndex (TYPE_7__*) ;
 int OE_Abort ;
 int OP_Goto ;
 int SQLITE_IDXTYPE_PRIMARYKEY ;
 int TK_ID ;
 int assert (int) ;
 scalar_t__ hasColumn (int*,int,int) ;
 scalar_t__ resizeIndexObject (TYPE_4__*,TYPE_7__*,int) ;
 int sqlite3CreateIndex (TYPE_6__*,int ,int ,int ,TYPE_8__*,int ,int ,int ,int ,int ,int ) ;
 int sqlite3ExprAlloc (TYPE_4__*,int ,int *,int ) ;
 TYPE_8__* sqlite3ExprListAppend (TYPE_6__*,int ,int ) ;
 TYPE_7__* sqlite3PrimaryKeyIndex (TYPE_5__*) ;
 int sqlite3StrBINARY ;
 int sqlite3TokenInit (int *,int ) ;
 int sqlite3VdbeChangeOpcode (int *,scalar_t__,int ) ;
 int sqlite3VdbeChangeP3 (int *,scalar_t__,int ) ;

__attribute__((used)) static void convertToWithoutRowidTable(Parse *pParse, Table *pTab){
  Index *pIdx;
  Index *pPk;
  int nPk;
  int i, j;
  sqlite3 *db = pParse->db;
  Vdbe *v = pParse->pVdbe;



  if( !db->init.imposterTable ){
    for(i=0; i<pTab->nCol; i++){
      if( (pTab->aCol[i].colFlags & COLFLAG_PRIMKEY)!=0 ){
        pTab->aCol[i].notNull = OE_Abort;
      }
    }
  }



  if( IN_DECLARE_VTAB ) return;




  if( pParse->addrCrTab ){
    assert( v );
    sqlite3VdbeChangeP3(v, pParse->addrCrTab, BTREE_BLOBKEY);
  }




  if( pTab->iPKey>=0 ){
    ExprList *pList;
    Token ipkToken;
    sqlite3TokenInit(&ipkToken, pTab->aCol[pTab->iPKey].zName);
    pList = sqlite3ExprListAppend(pParse, 0,
                  sqlite3ExprAlloc(db, TK_ID, &ipkToken, 0));
    if( pList==0 ) return;
    pList->a[0].sortOrder = pParse->iPkSortOrder;
    assert( pParse->pNewTable==pTab );
    sqlite3CreateIndex(pParse, 0, 0, 0, pList, pTab->keyConf, 0, 0, 0, 0,
                       SQLITE_IDXTYPE_PRIMARYKEY);
    if( db->mallocFailed ) return;
    pPk = sqlite3PrimaryKeyIndex(pTab);
    pTab->iPKey = -1;
  }else{
    pPk = sqlite3PrimaryKeyIndex(pTab);






    for(i=j=1; i<pPk->nKeyCol; i++){
      if( hasColumn(pPk->aiColumn, j, pPk->aiColumn[i]) ){
        pPk->nColumn--;
      }else{
        pPk->aiColumn[j++] = pPk->aiColumn[i];
      }
    }
    pPk->nKeyCol = j;
  }
  assert( pPk!=0 );
  pPk->isCovering = 1;
  if( !db->init.imposterTable ) pPk->uniqNotNull = 1;
  nPk = pPk->nKeyCol;





  if( v && pPk->tnum>0 ){
    assert( db->init.busy==0 );
    sqlite3VdbeChangeOpcode(v, pPk->tnum, OP_Goto);
  }


  pPk->tnum = pTab->tnum;




  for(pIdx=pTab->pIndex; pIdx; pIdx=pIdx->pNext){
    int n;
    if( IsPrimaryKeyIndex(pIdx) ) continue;
    for(i=n=0; i<nPk; i++){
      if( !hasColumn(pIdx->aiColumn, pIdx->nKeyCol, pPk->aiColumn[i]) ) n++;
    }
    if( n==0 ){

      pIdx->nColumn = pIdx->nKeyCol;
      continue;
    }
    if( resizeIndexObject(db, pIdx, pIdx->nKeyCol+n) ) return;
    for(i=0, j=pIdx->nKeyCol; i<nPk; i++){
      if( !hasColumn(pIdx->aiColumn, pIdx->nKeyCol, pPk->aiColumn[i]) ){
        pIdx->aiColumn[j] = pPk->aiColumn[i];
        pIdx->azColl[j] = pPk->azColl[i];
        j++;
      }
    }
    assert( pIdx->nColumn>=pIdx->nKeyCol+n );
    assert( pIdx->nColumn>=j );
  }



  if( nPk<pTab->nCol ){
    if( resizeIndexObject(db, pPk, pTab->nCol) ) return;
    for(i=0, j=nPk; i<pTab->nCol; i++){
      if( !hasColumn(pPk->aiColumn, j, i) ){
        assert( j<pPk->nColumn );
        pPk->aiColumn[j] = i;
        pPk->azColl[j] = sqlite3StrBINARY;
        j++;
      }
    }
    assert( pPk->nColumn==j );
    assert( pTab->nCol==j );
  }else{
    pPk->nColumn = pTab->nCol;
  }
}

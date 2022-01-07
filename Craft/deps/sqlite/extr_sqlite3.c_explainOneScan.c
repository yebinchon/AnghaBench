
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct SrcList_item {int iSelectId; int zName; int zAlias; int pTab; scalar_t__ pSelect; } ;
typedef int sqlite3_int64 ;
struct TYPE_15__ {int idxStr; int idxNum; } ;
typedef TYPE_4__ sqlite3_index_info ;
typedef int sqlite3 ;
struct TYPE_13__ {TYPE_4__* pVtabIdx; TYPE_1__* pIdx; } ;
struct TYPE_14__ {int wsFlags; scalar_t__ nEq; scalar_t__ nRow; TYPE_2__ u; } ;
struct TYPE_16__ {size_t iFrom; TYPE_3__ plan; } ;
typedef TYPE_5__ WhereLevel ;
typedef int Vdbe ;
struct TYPE_18__ {int explain; int iSelectId; int * db; int * pVdbe; } ;
struct TYPE_17__ {struct SrcList_item* a; } ;
struct TYPE_12__ {char* zName; } ;
typedef TYPE_6__ SrcList ;
typedef TYPE_7__ Parse ;


 int OP_Explain ;
 int P4_DYNAMIC ;
 int WHERE_BOTH_LIMIT ;
 int WHERE_BTM_LIMIT ;
 int WHERE_IDX_ONLY ;
 int WHERE_INDEXED ;
 int WHERE_MULTI_OR ;
 int WHERE_ONETABLE_ONLY ;
 int WHERE_ORDERBY_MAX ;
 int WHERE_ORDERBY_MIN ;
 int WHERE_ROWID_EQ ;
 int WHERE_ROWID_RANGE ;
 int WHERE_TEMP_INDEX ;
 int WHERE_TOP_LIMIT ;
 int WHERE_VIRTUALTABLE ;
 char* explainIndexRange (int *,TYPE_5__*,int ) ;
 int sqlite3DbFree (int *,char*) ;
 char* sqlite3MAppendf (int *,char*,char*,char*,...) ;
 char* sqlite3MPrintf (int *,char*,char*) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int,char*,int ) ;
 int testcase (int) ;

__attribute__((used)) static void explainOneScan(
  Parse *pParse,
  SrcList *pTabList,
  WhereLevel *pLevel,
  int iLevel,
  int iFrom,
  u16 wctrlFlags
){
  if( pParse->explain==2 ){
    u32 flags = pLevel->plan.wsFlags;
    struct SrcList_item *pItem = &pTabList->a[pLevel->iFrom];
    Vdbe *v = pParse->pVdbe;
    sqlite3 *db = pParse->db;
    char *zMsg;
    sqlite3_int64 nRow;
    int iId = pParse->iSelectId;
    int isSearch;

    if( (flags&WHERE_MULTI_OR) || (wctrlFlags&WHERE_ONETABLE_ONLY) ) return;

    isSearch = (pLevel->plan.nEq>0)
             || (flags&(WHERE_BTM_LIMIT|WHERE_TOP_LIMIT))!=0
             || (wctrlFlags&(WHERE_ORDERBY_MIN|WHERE_ORDERBY_MAX));

    zMsg = sqlite3MPrintf(db, "%s", isSearch?"SEARCH":"SCAN");
    if( pItem->pSelect ){
      zMsg = sqlite3MAppendf(db, zMsg, "%s SUBQUERY %d", zMsg,pItem->iSelectId);
    }else{
      zMsg = sqlite3MAppendf(db, zMsg, "%s TABLE %s", zMsg, pItem->zName);
    }

    if( pItem->zAlias ){
      zMsg = sqlite3MAppendf(db, zMsg, "%s AS %s", zMsg, pItem->zAlias);
    }
    if( (flags & WHERE_INDEXED)!=0 ){
      char *zWhere = explainIndexRange(db, pLevel, pItem->pTab);
      zMsg = sqlite3MAppendf(db, zMsg, "%s USING %s%sINDEX%s%s%s", zMsg,
          ((flags & WHERE_TEMP_INDEX)?"AUTOMATIC ":""),
          ((flags & WHERE_IDX_ONLY)?"COVERING ":""),
          ((flags & WHERE_TEMP_INDEX)?"":" "),
          ((flags & WHERE_TEMP_INDEX)?"": pLevel->plan.u.pIdx->zName),
          zWhere
      );
      sqlite3DbFree(db, zWhere);
    }else if( flags & (WHERE_ROWID_EQ|WHERE_ROWID_RANGE) ){
      zMsg = sqlite3MAppendf(db, zMsg, "%s USING INTEGER PRIMARY KEY", zMsg);

      if( flags&WHERE_ROWID_EQ ){
        zMsg = sqlite3MAppendf(db, zMsg, "%s (rowid=?)", zMsg);
      }else if( (flags&WHERE_BOTH_LIMIT)==WHERE_BOTH_LIMIT ){
        zMsg = sqlite3MAppendf(db, zMsg, "%s (rowid>? AND rowid<?)", zMsg);
      }else if( flags&WHERE_BTM_LIMIT ){
        zMsg = sqlite3MAppendf(db, zMsg, "%s (rowid>?)", zMsg);
      }else if( flags&WHERE_TOP_LIMIT ){
        zMsg = sqlite3MAppendf(db, zMsg, "%s (rowid<?)", zMsg);
      }
    }

    else if( (flags & WHERE_VIRTUALTABLE)!=0 ){
      sqlite3_index_info *pVtabIdx = pLevel->plan.u.pVtabIdx;
      zMsg = sqlite3MAppendf(db, zMsg, "%s VIRTUAL TABLE INDEX %d:%s", zMsg,
                  pVtabIdx->idxNum, pVtabIdx->idxStr);
    }

    if( wctrlFlags&(WHERE_ORDERBY_MIN|WHERE_ORDERBY_MAX) ){
      testcase( wctrlFlags & WHERE_ORDERBY_MIN );
      nRow = 1;
    }else{
      nRow = (sqlite3_int64)pLevel->plan.nRow;
    }
    zMsg = sqlite3MAppendf(db, zMsg, "%s (~%lld rows)", zMsg, nRow);
    sqlite3VdbeAddOp4(v, OP_Explain, iId, iLevel, iFrom, zMsg, P4_DYNAMIC);
  }
}

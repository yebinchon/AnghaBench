
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int idxStr; scalar_t__ needToFreeIdxStr; } ;
typedef TYPE_3__ sqlite3_index_info ;
struct TYPE_13__ {TYPE_2__* pParse; TYPE_3__** ppIdxInfo; TYPE_1__* pSrc; } ;
typedef TYPE_4__ WhereBestIdx ;
struct TYPE_14__ {scalar_t__ mallocFailed; } ;
struct TYPE_11__ {TYPE_5__* db; } ;
struct TYPE_10__ {int pTab; } ;


 scalar_t__ IsVirtual (int ) ;
 int assert (int) ;
 int bestBtreeIndex (TYPE_4__*) ;
 int bestVirtualIndex (TYPE_4__*) ;
 int sqlite3DbFree (TYPE_5__*,TYPE_3__*) ;
 int sqlite3_free (int ) ;

__attribute__((used)) static void bestIndex(WhereBestIdx *p){

  if( IsVirtual(p->pSrc->pTab) ){
    sqlite3_index_info *pIdxInfo = 0;
    p->ppIdxInfo = &pIdxInfo;
    bestVirtualIndex(p);
    assert( pIdxInfo!=0 || p->pParse->db->mallocFailed );
    if( pIdxInfo && pIdxInfo->needToFreeIdxStr ){
      sqlite3_free(pIdxInfo->idxStr);
    }
    sqlite3DbFree(p->pParse->db, pIdxInfo);
  }else

  {
    bestBtreeIndex(p);
  }
}

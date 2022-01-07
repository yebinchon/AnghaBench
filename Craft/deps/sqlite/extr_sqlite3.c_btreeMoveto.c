
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ i64 ;
typedef int aSpace ;
typedef int UnpackedRecord ;
struct TYPE_7__ {int db; } ;
struct TYPE_6__ {TYPE_2__* pKeyInfo; } ;
typedef TYPE_1__ BtCursor ;


 int SQLITE_NOMEM ;
 int assert (int) ;
 int sqlite3BtreeMovetoUnpacked (TYPE_1__*,int *,scalar_t__,int,int*) ;
 int sqlite3DbFree (int ,char*) ;
 int * sqlite3VdbeAllocUnpackedRecord (TYPE_2__*,char*,int,char**) ;
 int sqlite3VdbeRecordUnpack (TYPE_2__*,int,void const*,int *) ;

__attribute__((used)) static int btreeMoveto(
  BtCursor *pCur,
  const void *pKey,
  i64 nKey,
  int bias,
  int *pRes
){
  int rc;
  UnpackedRecord *pIdxKey;
  char aSpace[150];
  char *pFree = 0;

  if( pKey ){
    assert( nKey==(i64)(int)nKey );
    pIdxKey = sqlite3VdbeAllocUnpackedRecord(
        pCur->pKeyInfo, aSpace, sizeof(aSpace), &pFree
    );
    if( pIdxKey==0 ) return SQLITE_NOMEM;
    sqlite3VdbeRecordUnpack(pCur->pKeyInfo, (int)nKey, pKey, pIdxKey);
  }else{
    pIdxKey = 0;
  }
  rc = sqlite3BtreeMovetoUnpacked(pCur, pIdxKey, nKey, bias, pRes);
  if( pFree ){
    sqlite3DbFree(pCur->pKeyInfo->db, pFree);
  }
  return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* pUnpacked; } ;
typedef TYPE_2__ VdbeSorter ;
struct TYPE_12__ {TYPE_2__* pSorter; TYPE_5__* pKeyInfo; } ;
typedef TYPE_3__ VdbeCursor ;
struct TYPE_13__ {int nField; int flags; TYPE_1__* aMem; } ;
typedef TYPE_4__ UnpackedRecord ;
struct TYPE_14__ {int nField; } ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_5__ KeyInfo ;


 int MEM_Null ;
 int UNPACKED_PREFIX_MATCH ;
 int assert (int) ;
 int sqlite3VdbeRecordCompare (int,void const*,TYPE_4__*) ;
 int sqlite3VdbeRecordUnpack (TYPE_5__*,int,void const*,TYPE_4__*) ;

__attribute__((used)) static void vdbeSorterCompare(
  const VdbeCursor *pCsr,
  int bOmitRowid,
  const void *pKey1, int nKey1,
  const void *pKey2, int nKey2,
  int *pRes
){
  KeyInfo *pKeyInfo = pCsr->pKeyInfo;
  VdbeSorter *pSorter = pCsr->pSorter;
  UnpackedRecord *r2 = pSorter->pUnpacked;
  int i;

  if( pKey2 ){
    sqlite3VdbeRecordUnpack(pKeyInfo, nKey2, pKey2, r2);
  }

  if( bOmitRowid ){
    r2->nField = pKeyInfo->nField;
    assert( r2->nField>0 );
    for(i=0; i<r2->nField; i++){
      if( r2->aMem[i].flags & MEM_Null ){
        *pRes = -1;
        return;
      }
    }
    r2->flags |= UNPACKED_PREFIX_MATCH;
  }

  *pRes = sqlite3VdbeRecordCompare(nKey1, pKey1, r2);
}

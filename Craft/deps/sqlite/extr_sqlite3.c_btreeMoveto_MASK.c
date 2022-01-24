#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ i64 ;
typedef  int /*<<< orphan*/  aSpace ;
typedef  int /*<<< orphan*/  UnpackedRecord ;
struct TYPE_7__ {int /*<<< orphan*/  db; } ;
struct TYPE_6__ {TYPE_2__* pKeyInfo; } ;
typedef  TYPE_1__ BtCursor ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,char*,int,char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,void const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
  BtCursor *pCur,     /* Cursor open on the btree to be searched */
  const void *pKey,   /* Packed key if the btree is an index */
  i64 nKey,           /* Integer key for tables.  Size of pKey for indices */
  int bias,           /* Bias search to the high end */
  int *pRes           /* Write search results here */
){
  int rc;                    /* Status code */
  UnpackedRecord *pIdxKey;   /* Unpacked index key */
  char aSpace[150];          /* Temp space for pIdxKey - to avoid a malloc */
  char *pFree = 0;

  if( pKey ){
    FUNC0( nKey==(i64)(int)nKey );
    pIdxKey = FUNC3(
        pCur->pKeyInfo, aSpace, sizeof(aSpace), &pFree
    );
    if( pIdxKey==0 ) return SQLITE_NOMEM;
    FUNC4(pCur->pKeyInfo, (int)nKey, pKey, pIdxKey);
  }else{
    pIdxKey = 0;
  }
  rc = FUNC1(pCur, pIdxKey, nKey, bias, pRes);
  if( pFree ){
    FUNC2(pCur->pKeyInfo->db, pFree);
  }
  return rc;
}
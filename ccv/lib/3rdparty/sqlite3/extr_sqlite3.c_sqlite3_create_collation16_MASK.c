#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  mallocFailed; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_UTF16NATIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,void*,int (*) (void*,int,void const*,int,void const*),int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 char* FUNC5 (TYPE_1__*,void const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(
  sqlite3* db, 
  const void *zName,
  int enc, 
  void* pCtx,
  int(*xCompare)(void*,int,const void*,int,const void*)
){
  int rc = SQLITE_OK;
  char *zName8;

#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(db) || zName==0 ) return SQLITE_MISUSE_BKPT;
#endif
  FUNC6(db->mutex);
  FUNC0( !db->mallocFailed );
  zName8 = FUNC5(db, zName, -1, SQLITE_UTF16NATIVE);
  if( zName8 ){
    rc = FUNC1(db, zName8, (u8)enc, pCtx, xCompare, 0);
    FUNC3(db, zName8);
  }
  rc = FUNC2(db, rc);
  FUNC7(db->mutex);
  return rc;
}
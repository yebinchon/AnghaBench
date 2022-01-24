#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char u16 ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; scalar_t__ mallocFailed; int /*<<< orphan*/  pErr; int /*<<< orphan*/  errCode; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

const void *FUNC6(sqlite3 *db){
  static const u16 outOfMem[] = {
    'o', 'u', 't', ' ', 'o', 'f', ' ', 'm', 'e', 'm', 'o', 'r', 'y', 0
  };
  static const u16 misuse[] = {
    'l', 'i', 'b', 'r', 'a', 'r', 'y', ' ', 
    'r', 'o', 'u', 't', 'i', 'n', 'e', ' ', 
    'c', 'a', 'l', 'l', 'e', 'd', ' ', 
    'o', 'u', 't', ' ', 
    'o', 'f', ' ', 
    's', 'e', 'q', 'u', 'e', 'n', 'c', 'e', 0
  };

  const void *z;
  if( !db ){
    return (void *)outOfMem;
  }
  if( !FUNC1(db) ){
    return (void *)misuse;
  }
  FUNC3(db->mutex);
  if( db->mallocFailed ){
    z = (void *)outOfMem;
  }else{
    z = FUNC5(db->pErr);
    if( z==0 ){
      FUNC2(db->pErr, -1, FUNC0(db->errCode),
           SQLITE_UTF8, SQLITE_STATIC);
      z = FUNC5(db->pErr);
    }
    /* A malloc() may have failed within the call to sqlite3_value_text16()
    ** above. If this is the case, then the db->mallocFailed flag needs to
    ** be cleared before returning. Do this directly, instead of via
    ** sqlite3ApiExit(), to avoid setting the database handle error message.
    */
    db->mallocFailed = 0;
  }
  FUNC4(db->mutex);
  return z;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite3_int64 ;
struct TYPE_2__ {int alarmThreshold; int nearlyFull; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_STATUS_MEMORY_USED ; 
 TYPE_1__ mem0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

sqlite3_int64 FUNC6(sqlite3_int64 n){
  sqlite3_int64 priorLimit;
  sqlite3_int64 excess;
  sqlite3_int64 nUsed;
#ifndef SQLITE_OMIT_AUTOINIT
  int rc = FUNC1();
  if( rc ) return -1;
#endif
  FUNC3(mem0.mutex);
  priorLimit = mem0.alarmThreshold;
  if( n<0 ){
    FUNC4(mem0.mutex);
    return priorLimit;
  }
  mem0.alarmThreshold = n;
  nUsed = FUNC0(SQLITE_STATUS_MEMORY_USED);
  mem0.nearlyFull = (n>0 && n<=nUsed);
  FUNC4(mem0.mutex);
  excess = FUNC2() - n;
  if( excess>0 ) FUNC5((int)(excess & 0x7fffffff));
  return priorLimit;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ alarmCallback; int alarmThreshold; int nearlyFull; int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {int (* xRoundup ) (int) ;void* (* xMalloc ) (int) ;} ;
struct TYPE_5__ {TYPE_1__ m; } ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_STATUS_MALLOC_COUNT ; 
 int /*<<< orphan*/  SQLITE_STATUS_MALLOC_SIZE ; 
 int /*<<< orphan*/  SQLITE_STATUS_MEMORY_USED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__ mem0 ; 
 TYPE_2__ sqlite3GlobalConfig ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 void* FUNC8 (int) ; 
 void* FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(int n, void **pp){
  int nFull;
  void *p;
  FUNC0( FUNC6(mem0.mutex) );
  nFull = sqlite3GlobalConfig.m.xRoundup(n);
  FUNC4(SQLITE_STATUS_MALLOC_SIZE, n);
  if( mem0.alarmCallback!=0 ){
    int nUsed = FUNC5(SQLITE_STATUS_MEMORY_USED);
    if( nUsed >= mem0.alarmThreshold - nFull ){
      mem0.nearlyFull = 1;
      FUNC1(nFull);
    }else{
      mem0.nearlyFull = 0;
    }
  }
  p = sqlite3GlobalConfig.m.xMalloc(nFull);
#ifdef SQLITE_ENABLE_MEMORY_MANAGEMENT
  if( p==0 && mem0.alarmCallback ){
    sqlite3MallocAlarm(nFull);
    p = sqlite3GlobalConfig.m.xMalloc(nFull);
  }
#endif
  if( p ){
    nFull = FUNC2(p);
    FUNC3(SQLITE_STATUS_MEMORY_USED, nFull);
    FUNC3(SQLITE_STATUS_MALLOC_COUNT, 1);
  }
  *pp = p;
  return nFull;
}
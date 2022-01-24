#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ nRef; scalar_t__ id; int trace; int /*<<< orphan*/  mutex; scalar_t__ owner; } ;
typedef  TYPE_1__ sqlite3_mutex ;

/* Variables and functions */
 scalar_t__ SQLITE_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int,scalar_t__) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(sqlite3_mutex *p){
  FUNC0( FUNC2(p) );
#if SQLITE_MUTEX_NREF
  p->nRef--;
  if( p->nRef==0 ) p->owner = 0;
#endif
  FUNC0( p->nRef==0 || p->id==SQLITE_MUTEX_RECURSIVE );

#ifdef SQLITE_HOMEGROWN_RECURSIVE_MUTEX
  if( p->nRef==0 ){
    pthread_mutex_unlock(&p->mutex);
  }
#else
  FUNC3(&p->mutex);
#endif

#ifdef SQLITE_DEBUG
  if( p->trace ){
    printf("leave mutex %p (%d) with nRef=%d\n", p, p->trace, p->nRef);
  }
#endif
}
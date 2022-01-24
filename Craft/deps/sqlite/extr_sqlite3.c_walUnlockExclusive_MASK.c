#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pDbFd; scalar_t__ exclusiveMode; } ;
typedef  TYPE_1__ Wal ;

/* Variables and functions */
 int SQLITE_SHM_EXCLUSIVE ; 
 int SQLITE_SHM_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(Wal *pWal, int lockIdx, int n){
  if( pWal->exclusiveMode ) return;
  (void)FUNC1(pWal->pDbFd, lockIdx, n,
                         SQLITE_SHM_UNLOCK | SQLITE_SHM_EXCLUSIVE);
  FUNC0(("WAL%p: release EXCLUSIVE-%s cnt=%d\n", pWal,
             FUNC2(lockIdx), n));
}
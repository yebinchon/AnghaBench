#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32_t ;
typedef  int /*<<< orphan*/  sys_sem_t ;
struct sswt_cb {scalar_t__ timeflag; int /*<<< orphan*/ * psem; } ;

/* Variables and functions */
 int /*<<< orphan*/  sswt_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,struct sswt_cb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sswt_cb*) ; 

int
FUNC3(sys_sem_t sem, u32_t timeout)
{
    struct sswt_cb sswt_cb;

    sswt_cb.psem = &sem;
    sswt_cb.timeflag = 0;

    /* If timeout is zero, then just wait forever */
    if (timeout > 0)
        /* Create a timer and pass it the address of our flag */
        FUNC1(timeout, sswt_handler, &sswt_cb);
    FUNC0(sem);
    /* Was it a timeout? */
    if (sswt_cb.timeflag)
    {
        /* timeout */
        return 0;
    } else {
        /* Not a timeout. Remove timeout entry */
        FUNC2(sswt_handler, &sswt_cb);
        return 1;
    }

}
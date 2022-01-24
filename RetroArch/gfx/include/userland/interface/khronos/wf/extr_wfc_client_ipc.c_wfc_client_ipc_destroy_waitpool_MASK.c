#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sem; TYPE_1__* waiters; } ;
typedef  TYPE_2__ WFC_WAITPOOL_T ;
struct TYPE_4__ {int /*<<< orphan*/  sem; } ;

/* Variables and functions */
 int WFC_CLIENT_IPC_MAX_WAITERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(WFC_WAITPOOL_T *waitpool)
{
   int i;

   for (i = 0; i < WFC_CLIENT_IPC_MAX_WAITERS; i++)
      FUNC0(&waitpool->waiters[i].sem);

   FUNC0(&waitpool->sem);
}
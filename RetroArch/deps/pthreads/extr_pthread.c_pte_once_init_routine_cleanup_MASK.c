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
struct TYPE_2__ {scalar_t__ semaphore; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ pthread_once_t ;
typedef  int /*<<< orphan*/  pte_osSemaphoreHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*,long) ; 
 int /*<<< orphan*/  PTE_ONCE_INIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void * arg)
{
   pthread_once_t * once_control = (pthread_once_t *) arg;

   (void) FUNC0(&once_control->state,PTE_ONCE_INIT);

   /* MBR fence */
   if (FUNC1((int*)&once_control->semaphore, 0L)) 
      FUNC2((pte_osSemaphoreHandle) once_control->semaphore, 1);
}
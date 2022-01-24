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
typedef  int /*<<< orphan*/  pte_osThreadHandle ;
typedef  int /*<<< orphan*/  pte_osResult ;
struct TYPE_4__ {int /*<<< orphan*/  cancelSem; } ;
typedef  TYPE_1__ pspThreadData ;

/* Variables and functions */
 int /*<<< orphan*/  PTE_OS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

pte_osResult FUNC6(pte_osThreadHandle handle)
{
   void                 *pTls = FUNC2(handle);
   pspThreadData *pThreadData = FUNC1(handle);

   FUNC4(pThreadData->cancelSem);  

   FUNC0(pThreadData);

   FUNC3(pTls);

   FUNC5(handle);

   return PTE_OS_OK;
}
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
typedef  int /*<<< orphan*/  pte_osResult ;

/* Variables and functions */
 int /*<<< orphan*/  PTE_OS_GENERAL_FAILURE ; 
 int /*<<< orphan*/  PTE_OS_OK ; 
 int /*<<< orphan*/  globalTlsLock ; 
 scalar_t__* keysUsed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

pte_osResult FUNC2(unsigned int index)
{
   pte_osResult result;

   if (keysUsed != NULL)
   {
      FUNC0(globalTlsLock);

      keysUsed[index-1] = 0;

      FUNC1(globalTlsLock);

      result = PTE_OS_OK;
   }
   else
      result = PTE_OS_GENERAL_FAILURE;

   return result;
}
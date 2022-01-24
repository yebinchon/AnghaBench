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
 int /*<<< orphan*/  PTE_OS_NO_RESOURCES ; 
 int /*<<< orphan*/  PTE_OS_OK ; 
 int /*<<< orphan*/  globalTlsLock ; 
 int* keysUsed ; 
 int maxTlsValues ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

pte_osResult FUNC2(unsigned int *pKey)
{
   int i;
   pte_osResult result = PTE_OS_NO_RESOURCES;

   FUNC0(globalTlsLock);

   for (i=0;i<maxTlsValues;i++)
   {
      if (keysUsed[i] == 0)
      {
         keysUsed[i] = 1;

         *pKey = i+1;
         result = PTE_OS_OK;
         break;
      }
   }

   FUNC1(globalTlsLock);

   return result;
}
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
typedef  int /*<<< orphan*/  pte_osMutexHandle ;
typedef  int /*<<< orphan*/  mutexName ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_PSP_UID ; 
 int /*<<< orphan*/  PTE_OS_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

pte_osResult FUNC2(pte_osMutexHandle *pHandle)
{
   static int mutexCtr = 0;
   char mutexName[32];
   pte_osMutexHandle handle;

   if (mutexCtr++ > MAX_PSP_UID)
      mutexCtr = 0;

   FUNC1(mutexName,sizeof(mutexName),"mutex%d",mutexCtr);

   handle = FUNC0(mutexName,
         0,          /* attributes (default) */
         1,          /* initial value        */
         1,          /* maximum value        */
         0);         /* options (default)    */

   *pHandle = handle;

   return PTE_OS_OK;
}
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

/* Variables and functions */
 int /*<<< orphan*/  PTE_OS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

pte_osResult FUNC1(pte_osMutexHandle handle)
{
  FUNC0(handle);

  return PTE_OS_OK;
}
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
typedef  int /*<<< orphan*/  IL_FUNCTION_T ;
typedef  int /*<<< orphan*/  ILCS_SERVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCHI_MEM_HANDLE_INVALID ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int*) ; 

int FUNC1(ILCS_SERVICE_T *st, IL_FUNCTION_T func, void *data, int len, void *resp, int *rlen)
{
   return FUNC0(st, func, data, len, NULL, 0, VCHI_MEM_HANDLE_INVALID, 0, 0, resp, rlen);
}
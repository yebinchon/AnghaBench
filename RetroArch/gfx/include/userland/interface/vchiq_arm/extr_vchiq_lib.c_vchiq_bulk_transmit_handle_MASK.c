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
typedef  scalar_t__ VCHI_MEM_HANDLE_T ;
typedef  int /*<<< orphan*/  VCHIQ_STATUS_T ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_T ;
typedef  int /*<<< orphan*/  VCHIQ_BULK_MODE_T ;

/* Variables and functions */
 scalar_t__ VCHI_MEM_HANDLE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

VCHIQ_STATUS_T
FUNC2(VCHIQ_SERVICE_HANDLE_T handle,
   VCHI_MEM_HANDLE_T memhandle,
   const void *offset,
   int size,
   void *userdata,
   VCHIQ_BULK_MODE_T mode)
{
   FUNC1(memhandle == VCHI_MEM_HANDLE_INVALID);

   return FUNC0(handle, offset, size, userdata, mode);
}
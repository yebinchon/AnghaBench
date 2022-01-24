#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_3__ {int /*<<< orphan*/  lib_handle; int /*<<< orphan*/  handle; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ VCHI_SERVICE_T ;
typedef  int /*<<< orphan*/  VCHI_SERVICE_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int VCHIQ_ERROR ; 
 int /*<<< orphan*/  VCHIQ_IOC_REMOVE_SERVICE ; 
 int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_INVALID ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int32_t
FUNC3( const VCHI_SERVICE_HANDLE_T handle )
{
   VCHI_SERVICE_T *service = FUNC1(handle);
   int ret;

   if (!service)
      return VCHIQ_ERROR;

   FUNC0(ret,FUNC2(service->fd, VCHIQ_IOC_REMOVE_SERVICE, service->handle));

   service->lib_handle = VCHIQ_SERVICE_HANDLE_INVALID;

   return ret;
}
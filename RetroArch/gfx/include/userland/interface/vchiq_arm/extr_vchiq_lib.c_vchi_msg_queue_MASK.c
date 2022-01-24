#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int32_t ;
struct TYPE_6__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ VCHI_SERVICE_T ;
typedef  int /*<<< orphan*/  VCHI_SERVICE_HANDLE_T ;
typedef  scalar_t__ VCHI_FLAGS_T ;
struct TYPE_7__ {int count; TYPE_3__* elements; int /*<<< orphan*/  handle; } ;
typedef  TYPE_2__ VCHIQ_QUEUE_MESSAGE_T ;
struct TYPE_8__ {void const* member_0; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_3__ VCHIQ_ELEMENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int VCHIQ_ERROR ; 
 int /*<<< orphan*/  VCHIQ_IOC_QUEUE_MESSAGE ; 
 scalar_t__ VCHI_FLAGS_BLOCK_UNTIL_QUEUED ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

int32_t
FUNC5( VCHI_SERVICE_HANDLE_T handle,
   const void * data,
   uint32_t data_size,
   VCHI_FLAGS_T flags,
   void * msg_handle )
{
   VCHI_SERVICE_T *service = FUNC1(handle);
   VCHIQ_QUEUE_MESSAGE_T args;
   VCHIQ_ELEMENT_T element = {data, data_size};
   int ret;

   FUNC4(msg_handle);
   FUNC3(flags == VCHI_FLAGS_BLOCK_UNTIL_QUEUED);

   if (!service)
      return VCHIQ_ERROR;

   args.handle = service->handle;
   args.elements = &element;
   args.count = 1;
   FUNC0(ret, FUNC2(service->fd, VCHIQ_IOC_QUEUE_MESSAGE, &args));

   return ret;
}
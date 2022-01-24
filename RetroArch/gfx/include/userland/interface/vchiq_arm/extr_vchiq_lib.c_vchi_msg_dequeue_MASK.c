#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int int32_t ;
struct TYPE_5__ {scalar_t__ peek_size; int /*<<< orphan*/  fd; int /*<<< orphan*/  handle; int /*<<< orphan*/  peek_buf; } ;
typedef  TYPE_1__ VCHI_SERVICE_T ;
typedef  int /*<<< orphan*/  VCHI_SERVICE_HANDLE_T ;
typedef  scalar_t__ VCHI_FLAGS_T ;
struct TYPE_6__ {int blocking; void* buf; scalar_t__ bufsize; int /*<<< orphan*/  handle; } ;
typedef  TYPE_2__ VCHIQ_DEQUEUE_MESSAGE_T ;

/* Variables and functions */
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int VCHIQ_ERROR ; 
 int /*<<< orphan*/  VCHIQ_IOC_DEQUEUE_MESSAGE ; 
 scalar_t__ VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE ; 
 scalar_t__ VCHI_FLAGS_NONE ; 
 scalar_t__ errno ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int32_t
FUNC7( VCHI_SERVICE_HANDLE_T handle,
   void *data,
   uint32_t max_data_size_to_read,
   uint32_t *actual_msg_size,
   VCHI_FLAGS_T flags )
{
   VCHI_SERVICE_T *service = FUNC1(handle);
   VCHIQ_DEQUEUE_MESSAGE_T args;
   int ret;

   FUNC5(flags == VCHI_FLAGS_NONE || flags == VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE);

   if (!service)
      return VCHIQ_ERROR;

   if (service->peek_size >= 0)
   {
      FUNC6("vchi_msg_dequeue -> using peek buffer\n");
      if ((uint32_t)service->peek_size <= max_data_size_to_read)
      {
         FUNC4(data, service->peek_buf, service->peek_size);
         *actual_msg_size = service->peek_size;
         /* Invalidate the peek data, but retain the buffer */
         service->peek_size = -1;
         ret = 0;
      }
      else
      {
         ret = -1;
      }
   }
   else
   {
      args.handle = service->handle;
      args.blocking = (flags == VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE);
      args.bufsize = max_data_size_to_read;
      args.buf = data;
      FUNC0(ret, FUNC3(service->fd, VCHIQ_IOC_DEQUEUE_MESSAGE, &args));
      if (ret >= 0)
      {
         *actual_msg_size = ret;
         ret = 0;
      }
   }

   if ((ret < 0) && (errno != EWOULDBLOCK))
      FUNC2(stderr, "vchi_msg_dequeue -> %d(%ld)\n", ret, errno);

   return ret;
}
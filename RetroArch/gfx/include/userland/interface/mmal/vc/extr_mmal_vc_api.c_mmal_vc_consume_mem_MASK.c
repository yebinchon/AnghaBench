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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  reply ;
struct TYPE_3__ {scalar_t__ status; scalar_t__ handle; int /*<<< orphan*/  header; scalar_t__ size; } ;
typedef  TYPE_1__ mmal_worker_consume_mem ;
typedef  scalar_t__ MMAL_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_FALSE ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_WORKER_CONSUME_MEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

MMAL_STATUS_T FUNC3(size_t size, uint32_t *handle)
{
   MMAL_STATUS_T status;
   mmal_worker_consume_mem req;
   mmal_worker_consume_mem reply;
   size_t len = sizeof(reply);

   req.size = (uint32_t) size;

   status = FUNC1(FUNC0(),
                                     &req.header, sizeof(req),
                                     MMAL_WORKER_CONSUME_MEM,
                                     &reply, &len, MMAL_FALSE);
   if (status == MMAL_SUCCESS)
   {
      FUNC2(len == sizeof(reply));
      status = reply.status;
      *handle = reply.handle;
   }
   return status;
}
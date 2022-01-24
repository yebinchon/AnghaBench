#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  reply ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ mmal_worker_reply ;
struct TYPE_5__ {int /*<<< orphan*/  header; int /*<<< orphan*/  msg; } ;
typedef  TYPE_2__ mmal_worker_host_log ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_FALSE ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_WORKER_HOST_LOG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 

MMAL_STATUS_T FUNC5(const char *msg)
{
   MMAL_STATUS_T status = MMAL_EINVAL;
   if (msg)
   {
      mmal_worker_host_log req;
      mmal_worker_reply reply;
      size_t replylen = sizeof(reply);
      size_t msg_len = FUNC4(req.msg, msg, sizeof(req.msg), 0);

      /* Reduce the length if it is shorter than the max message length */
      status = FUNC1(FUNC0(), &req.header,
            sizeof(req) - sizeof(req.msg) + FUNC3(sizeof(req.msg), msg_len + 1),
            MMAL_WORKER_HOST_LOG,
            &reply, &replylen, MMAL_FALSE);

      if (status == MMAL_SUCCESS)
      {
         FUNC2(replylen == sizeof(reply));
         status = reply.status;
      }
   }
   return status;
}
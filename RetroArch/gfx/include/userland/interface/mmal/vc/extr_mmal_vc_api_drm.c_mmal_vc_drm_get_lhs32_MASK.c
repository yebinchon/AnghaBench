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
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  mmal_worker_msg_header ;
struct TYPE_3__ {int /*<<< orphan*/  secret; } ;
typedef  TYPE_1__ mmal_worker_drm_get_lhs32_reply ;
typedef  scalar_t__ MMAL_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_FALSE ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_WORKER_DRM_GET_LHS32 ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*,size_t*,int /*<<< orphan*/ ) ; 

int FUNC5(unsigned char * into)
{
   MMAL_STATUS_T status;
   mmal_worker_msg_header req;
   mmal_worker_drm_get_lhs32_reply reply;
   size_t len = sizeof(reply);
   status = FUNC3();
   if (status != MMAL_SUCCESS) return status;

   status = FUNC4(FUNC2(),
                                     &req, sizeof(req),
                                     MMAL_WORKER_DRM_GET_LHS32,
                                     &reply, &len, MMAL_FALSE);
   FUNC0(into, reply.secret, 32);
   FUNC1();
   return status;
}
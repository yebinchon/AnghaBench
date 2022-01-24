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
typedef  int /*<<< orphan*/  msg ;
struct TYPE_3__ {int reset; int /*<<< orphan*/  stats; int /*<<< orphan*/  header; } ;
typedef  TYPE_1__ mmal_worker_stats ;
typedef  int /*<<< orphan*/  MMAL_VC_STATS_T ;
typedef  scalar_t__ MMAL_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_FALSE ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_WORKER_GET_STATS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

MMAL_STATUS_T FUNC3(MMAL_VC_STATS_T *stats, int reset)
{
   mmal_worker_stats msg;
   size_t len = sizeof(msg);
   msg.reset = reset;

   MMAL_STATUS_T status = FUNC1(FUNC0(),
                                                   &msg.header, sizeof(msg),
                                                   MMAL_WORKER_GET_STATS,
                                                   &msg, &len, MMAL_FALSE);

   if (status == MMAL_SUCCESS)
   {
      FUNC2(len == sizeof(msg));
      *stats = msg.stats;
   }
   return status;
}
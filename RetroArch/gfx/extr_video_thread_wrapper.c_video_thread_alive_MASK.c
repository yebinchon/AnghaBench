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
struct TYPE_7__ {int alive; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ thread_video_t ;
struct TYPE_6__ {int b; } ;
struct TYPE_8__ {TYPE_1__ data; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ thread_packet_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ALIVE ; 
 int /*<<< orphan*/  RARCH_CTL_IS_PAUSED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static bool FUNC4(void *data)
{
   bool ret;
   thread_video_t *thr = (thread_video_t*)data;

   if (FUNC0(RARCH_CTL_IS_PAUSED, NULL))
   {
      thread_packet_t pkt = { CMD_ALIVE };

      FUNC3(thr, &pkt);
      return pkt.data.b;
   }

   FUNC1(thr->lock);
   ret = thr->alive;
   FUNC2(thr->lock);

   return ret;
}
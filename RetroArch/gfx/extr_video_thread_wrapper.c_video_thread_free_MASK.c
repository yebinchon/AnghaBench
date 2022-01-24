#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  lock; TYPE_3__* buffer; } ;
struct TYPE_8__ {TYPE_3__* frame; } ;
struct TYPE_10__ {int /*<<< orphan*/  miss_count; int /*<<< orphan*/  hit_count; int /*<<< orphan*/  alpha_lock; struct TYPE_10__* alpha_mod; int /*<<< orphan*/  cond_thread; int /*<<< orphan*/  cond_cmd; int /*<<< orphan*/  lock; TYPE_2__ frame; TYPE_1__ texture; int /*<<< orphan*/  thread; } ;
typedef  TYPE_3__ thread_video_t ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ thread_packet_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FREE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*) ; 

__attribute__((used)) static void FUNC6(void *data)
{
   thread_video_t *thr = (thread_video_t*)data;
   thread_packet_t pkt = { CMD_FREE };

   if (!thr)
      return;

   FUNC5(thr, &pkt);

   FUNC4(thr->thread);

#if defined(HAVE_MENU)
   free(thr->texture.frame);
#endif
   FUNC1(thr->frame.buffer);
   FUNC3(thr->frame.lock);
   FUNC3(thr->lock);
   FUNC2(thr->cond_cmd);
   FUNC2(thr->cond_thread);

   FUNC1(thr->alpha_mod);
   FUNC3(thr->alpha_lock);

   FUNC0("Threaded video stats: Frames pushed: %u, Frames dropped: %u.\n",
         thr->hit_count, thr->miss_count);

   FUNC1(thr);
}
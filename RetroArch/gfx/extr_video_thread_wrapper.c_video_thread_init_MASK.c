#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {size_t input_scale; scalar_t__ rgb32; } ;
typedef  TYPE_3__ video_info_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_11__ {int /*<<< orphan*/ * buffer; void* lock; } ;
struct TYPE_14__ {void** input_data; int alive; int focus; int has_windowed; int suppress_screensaver; int /*<<< orphan*/  (* send_and_wait ) (TYPE_4__*,TYPE_5__*) ;int /*<<< orphan*/  thread; int /*<<< orphan*/  last_time; TYPE_1__ frame; TYPE_3__ info; int /*<<< orphan*/ ** input; void* cond_thread; void* cond_cmd; void* alpha_lock; void* lock; } ;
typedef  TYPE_4__ thread_video_t ;
struct TYPE_12__ {int b; } ;
struct TYPE_15__ {TYPE_2__ data; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ thread_packet_t ;
typedef  int /*<<< orphan*/  input_driver_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INIT ; 
 size_t RARCH_SCALE_BASE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,size_t) ; 
 void* FUNC3 () ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  video_thread_loop ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_5__*) ; 

__attribute__((used)) static bool FUNC7(thread_video_t *thr,
      const video_info_t info,
      input_driver_t **input, void **input_data)
{
   size_t max_size;
   thread_packet_t pkt = {CMD_INIT};

   thr->lock                 = FUNC4();
   thr->alpha_lock           = FUNC4();
   thr->frame.lock           = FUNC4();
   thr->cond_cmd             = FUNC3();
   thr->cond_thread          = FUNC3();
   thr->input                = input;
   thr->input_data           = input_data;
   thr->info                 = info;
   thr->alive                = true;
   thr->focus                = true;
   thr->has_windowed         = true;
   thr->suppress_screensaver = true;

   max_size                  = info.input_scale * RARCH_SCALE_BASE;
   max_size                 *= max_size;
   max_size                 *= info.rgb32 ? sizeof(uint32_t) : sizeof(uint16_t);
   thr->frame.buffer         = (uint8_t*)FUNC1(max_size);

   if (!thr->frame.buffer)
      return false;

   FUNC2(thr->frame.buffer, 0x80, max_size);

   thr->last_time            = FUNC0();
   thr->thread               = FUNC5(video_thread_loop, thr);

   if (!thr->thread)
      return false;

   FUNC6(thr, &pkt);

   thr->send_and_wait        = video_thread_send_and_wait_user_to_thread;
   return pkt.data.b;
}
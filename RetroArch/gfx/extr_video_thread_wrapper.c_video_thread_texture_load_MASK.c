#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_video_t ;
struct TYPE_5__ {int return_value; void* data; int /*<<< orphan*/  method; } ;
struct TYPE_6__ {TYPE_1__ custom_command; } ;
struct TYPE_7__ {TYPE_2__ data; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ thread_packet_t ;
typedef  int /*<<< orphan*/  custom_command_method_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CUSTOM_COMMAND ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 

unsigned FUNC2(void *data,
      custom_command_method_t func)
{
   thread_video_t *thr  = (thread_video_t*)FUNC0(true);
   thread_packet_t pkt  = { CMD_CUSTOM_COMMAND };

   if (!thr)
      return 0;

   pkt.data.custom_command.method = func;
   pkt.data.custom_command.data   = (void*)data;

   FUNC1(thr, &pkt);

   return pkt.data.custom_command.return_value;
}
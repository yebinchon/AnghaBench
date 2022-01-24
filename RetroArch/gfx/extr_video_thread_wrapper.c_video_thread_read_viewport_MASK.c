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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int is_idle; } ;
typedef  TYPE_2__ thread_video_t ;
struct TYPE_6__ {int b; int /*<<< orphan*/ * v; } ;
struct TYPE_8__ {TYPE_1__ data; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ thread_packet_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_READ_VIEWPORT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static bool FUNC1(void *data, uint8_t *buffer, bool is_idle)
{
   thread_video_t *thr = (thread_video_t*)data;
   thread_packet_t pkt = { CMD_READ_VIEWPORT };

   if (!thr)
      return false;

   pkt.data.v   = buffer;
   thr->is_idle = is_idle;

   FUNC0(thr, &pkt);

   return pkt.data.b;
}
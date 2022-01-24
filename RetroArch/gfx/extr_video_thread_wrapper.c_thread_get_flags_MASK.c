#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  driver_data; TYPE_1__* poke; } ;
typedef  TYPE_2__ thread_video_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_flags ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC1(void *data)
{
   thread_video_t *thr = (thread_video_t*)data;
   if (!thr || !thr->poke || !thr->poke->get_flags)
      return 0;
   return thr->poke->get_flags(thr->driver_data);
}
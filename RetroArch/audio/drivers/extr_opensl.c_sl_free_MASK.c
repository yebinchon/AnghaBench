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
struct TYPE_3__ {struct TYPE_3__* buffer_chunk; struct TYPE_3__* buffer; scalar_t__ cond; scalar_t__ lock; scalar_t__ engine_object; scalar_t__ output_mix; scalar_t__ buffer_queue_object; scalar_t__ player; } ;
typedef  TYPE_1__ sl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SL_PLAYSTATE_STOPPED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(void *data)
{
   sl_t *sl = (sl_t*)data;
   if (!sl)
      return;

   if (sl->player)
      FUNC1(sl->player, SL_PLAYSTATE_STOPPED);

   if (sl->buffer_queue_object)
      FUNC0(sl->buffer_queue_object);

   if (sl->output_mix)
      FUNC0(sl->output_mix);

   if (sl->engine_object)
      FUNC0(sl->engine_object);

   if (sl->lock)
      FUNC4(sl->lock);
   if (sl->cond)
      FUNC3(sl->cond);

   FUNC2(sl->buffer);
   FUNC2(sl->buffer_chunk);
   FUNC2(sl);
}
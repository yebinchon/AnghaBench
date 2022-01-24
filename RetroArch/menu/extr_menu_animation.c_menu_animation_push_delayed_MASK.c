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
struct TYPE_4__ {unsigned int duration; TYPE_2__* userdata; int /*<<< orphan*/  cb; } ;
typedef  TYPE_1__ menu_timer_ctx_entry_t ;
struct TYPE_5__ {int /*<<< orphan*/  timer; int /*<<< orphan*/  entry; } ;
typedef  TYPE_2__ menu_delayed_animation_t ;
typedef  int /*<<< orphan*/  menu_animation_ctx_entry_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  menu_delayed_animation_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC3(unsigned delay, menu_animation_ctx_entry_t *entry)
{
   menu_timer_ctx_entry_t timer_entry;
   menu_delayed_animation_t *delayed_animation  = (menu_delayed_animation_t*) FUNC0(sizeof(menu_delayed_animation_t));

   FUNC1(&delayed_animation->entry, entry, sizeof(menu_animation_ctx_entry_t));

   timer_entry.cb       = menu_delayed_animation_cb;
   timer_entry.duration = delay;
   timer_entry.userdata = delayed_animation;

   FUNC2(&delayed_animation->timer, &timer_entry);
}
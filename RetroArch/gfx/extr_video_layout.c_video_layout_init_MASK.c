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
struct TYPE_4__ {void* video_driver_data; } ;
struct TYPE_5__ {int images_count; int /*<<< orphan*/ ** images; int /*<<< orphan*/  const* render; TYPE_1__ render_info; } ;
typedef  TYPE_2__ video_layout_state_t ;
typedef  int /*<<< orphan*/  video_layout_render_interface_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void**,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* video_layout_state ; 

void FUNC3(void *video_driver_data, const video_layout_render_interface_t *render)
{
   if (video_layout_state)
      FUNC2();

   video_layout_state = (video_layout_state_t*)FUNC0(1, sizeof(video_layout_state_t));
   video_layout_state->render_info.video_driver_data = video_driver_data;
   video_layout_state->render = render;

   FUNC1((void**)&video_layout_state->images, sizeof(void*), 1);

   video_layout_state->images[0] = NULL;
   video_layout_state->images_count = 1;
}
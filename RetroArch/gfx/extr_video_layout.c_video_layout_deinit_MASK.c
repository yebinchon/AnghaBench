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
struct TYPE_7__ {int /*<<< orphan*/  video_driver_data; } ;
struct TYPE_8__ {int images_count; int io_count; int /*<<< orphan*/  view_array; struct TYPE_8__* io; struct TYPE_8__* name; struct TYPE_8__* images; TYPE_2__ render_info; TYPE_1__* render; struct TYPE_8__* base_path; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* free_image ) (int /*<<< orphan*/ ,TYPE_3__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__) ; 
 TYPE_3__* video_layout_state ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
   int i;

   if (!video_layout_state)
      return;

   FUNC0(video_layout_state->base_path);

   for (i = 1; i < video_layout_state->images_count; ++i)
   {
      video_layout_state->render->free_image(
         video_layout_state->render_info.video_driver_data,
         video_layout_state->images[i]
      );
   }

   FUNC0(video_layout_state->images);

   for (i = 0; i < video_layout_state->io_count; ++i)
      FUNC0(video_layout_state->io[i].name);

   FUNC0(video_layout_state->io);

   FUNC2(&video_layout_state->view_array);

   FUNC0(video_layout_state);
   video_layout_state = NULL;
}
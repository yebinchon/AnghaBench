#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  retro_camera_frame_raw_framebuffer_t ;
typedef  int /*<<< orphan*/  retro_camera_frame_opengl_texture_t ;

/* Variables and functions */

__attribute__((used)) static bool FUNC0(void *data,
      retro_camera_frame_raw_framebuffer_t frame_raw_cb,
      retro_camera_frame_opengl_texture_t frame_gl_cb)
{
   (void)data;
   (void)frame_raw_cb;
   (void)frame_gl_cb;

   return true;
}
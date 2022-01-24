#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* path; } ;
struct video_shader_pass {TYPE_1__ source; } ;
struct video_shader {struct video_shader_pass* pass; } ;

/* Variables and functions */
 int menu_driver_shader_modified ; 

void FUNC0(struct video_shader *shader,
      unsigned i)
{
   struct video_shader_pass *shader_pass = shader ?
      &shader->pass[i] : NULL;

   if (shader_pass)
      *shader_pass->source.path = '\0';

   menu_driver_shader_modified = true;
}
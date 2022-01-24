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
struct TYPE_7__ {int /*<<< orphan*/  num; } ;
typedef  TYPE_2__ video_shader_ctx_info_t ;
struct TYPE_8__ {int /*<<< orphan*/  shader_data; TYPE_1__* shader; } ;
typedef  TYPE_3__ gl_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* num_shaders ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(gl_t *gl,
      video_shader_ctx_info_t *shader_info)
{
   if (!shader_info)
      return false;

   shader_info->num = gl->shader->num_shaders(gl->shader_data);

   return true;
}
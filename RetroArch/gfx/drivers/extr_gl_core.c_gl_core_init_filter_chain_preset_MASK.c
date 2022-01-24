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
struct TYPE_4__ {scalar_t__ smooth; } ;
struct TYPE_5__ {int /*<<< orphan*/  filter_chain; TYPE_1__ video_info; } ;
typedef  TYPE_2__ gl_core_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_CORE_FILTER_CHAIN_LINEAR ; 
 int /*<<< orphan*/  GL_CORE_FILTER_CHAIN_NEAREST ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(gl_core_t *gl, const char *shader_path)
{
   gl->filter_chain = FUNC1(
         shader_path,
         gl->video_info.smooth ?
         GL_CORE_FILTER_CHAIN_LINEAR : GL_CORE_FILTER_CHAIN_NEAREST);

   if (!gl->filter_chain)
   {
      FUNC0("[GLCore]: Failed to create preset: \"%s\".\n", shader_path);
      return false;
   }

   return true;
}
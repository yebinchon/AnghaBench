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
struct TYPE_5__ {int /*<<< orphan*/  filter_chain; TYPE_1__ video_info; int /*<<< orphan*/  ctx_driver; } ;
typedef  TYPE_2__ gl_core_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_CORE_FILTER_CHAIN_LINEAR ; 
 int /*<<< orphan*/  GL_CORE_FILTER_CHAIN_NEAREST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(gl_core_t *gl)
{
   if (!gl->ctx_driver)
      return false;

   gl->filter_chain = FUNC1(
         gl->video_info.smooth ?
         GL_CORE_FILTER_CHAIN_LINEAR : GL_CORE_FILTER_CHAIN_NEAREST);

   if (!gl->filter_chain)
   {
      FUNC0("Failed to create filter chain.\n");
      return false;
   }

   return true;
}
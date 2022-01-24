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
struct TYPE_3__ {unsigned int fence_count; scalar_t__* fences; } ;
typedef  TYPE_1__ gl_core_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(gl_core_t *gl)
{
   unsigned i;
   for (i = 0; i < gl->fence_count; i++)
   {
      if (gl->fences[i])
         FUNC0(gl->fences[i]);
   }
   gl->fence_count = 0;
   FUNC1(gl->fences, 0, sizeof(gl->fences));
}
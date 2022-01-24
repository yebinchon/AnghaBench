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
typedef  int /*<<< orphan*/  COMPONENT_T ;

/* Variables and functions */
 scalar_t__ OMX_ErrorNone ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eglBuffer ; 
 int /*<<< orphan*/  egl_render ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void* data, COMPONENT_T* comp)
{
  if (FUNC0(FUNC2(egl_render), eglBuffer) != OMX_ErrorNone)
   {
      FUNC3("OMX_FillThisBuffer failed in callback\n");
      FUNC1(1);
   }
}
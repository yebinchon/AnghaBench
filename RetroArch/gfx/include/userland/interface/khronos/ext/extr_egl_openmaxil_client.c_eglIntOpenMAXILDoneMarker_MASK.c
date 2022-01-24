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
typedef  void* EGLImageKHR ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  EGLINTOPENMAXILDONEMARKER_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eglIntOpenMAXILDoneMarker_impl ; 

int FUNC4 (void* component_handle, EGLImageKHR egl_image)
{
   CLIENT_THREAD_STATE_T *thread = FUNC0();
   int res;

   res = FUNC3(FUNC1(eglIntOpenMAXILDoneMarker_impl,
        thread, EGLINTOPENMAXILDONEMARKER_ID, FUNC2(component_handle), FUNC2(egl_image)));

   return res;
}
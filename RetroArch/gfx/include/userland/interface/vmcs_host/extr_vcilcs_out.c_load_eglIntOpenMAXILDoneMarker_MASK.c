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

/* Variables and functions */
 int VCOS_DL_GLOBAL ; 
 int VCOS_DL_LAZY ; 
 int VCOS_DL_LOCAL ; 
 int /*<<< orphan*/ * local_eglIntOpenMAXILDoneMarker ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (void*,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
   void *handle;

   /* First try to load from the current process, this will succeed
    * if something that is linked to libEGL is already loaded or
    * something explicitly loaded libEGL with RTLD_GLOBAL
    */
   handle = FUNC2(NULL, VCOS_DL_GLOBAL);
   local_eglIntOpenMAXILDoneMarker = (void * )FUNC3(handle, "eglIntOpenMAXILDoneMarker");
   if (local_eglIntOpenMAXILDoneMarker == NULL)
   {
      FUNC1(handle);
      /* If that failed try to load libEGL.so explicitely */
      handle = FUNC2("libEGL.so", VCOS_DL_LAZY | VCOS_DL_LOCAL);
      FUNC0(handle != NULL);
      local_eglIntOpenMAXILDoneMarker = (void * )FUNC3(handle, "eglIntOpenMAXILDoneMarker");
      FUNC0(local_eglIntOpenMAXILDoneMarker != NULL);
   }
}
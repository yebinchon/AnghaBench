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
 int /*<<< orphan*/  RTLD_LAZY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,char*) ; 
 int /*<<< orphan*/ * eglGetCurrentContext ; 
 int /*<<< orphan*/ * eglGetCurrentDisplay ; 
 int /*<<< orphan*/ * eglGetCurrentSurface ; 
 int /*<<< orphan*/ * eglGetError ; 
 int /*<<< orphan*/ * eglMakeCurrent ; 
 int /*<<< orphan*/ * eglQueryString ; 
 int /*<<< orphan*/ * eglQuerySurface ; 
 int /*<<< orphan*/ * eglSwapBuffers ; 
 int /*<<< orphan*/ * eglSwapInterval ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4()
{
   void * handle;
   char *error;

   handle = FUNC1("libEGL.so",RTLD_LAZY);
   if( handle == NULL )
   {
      FUNC3(FUNC0());
      return -1;
   }

   eglGetCurrentDisplay = FUNC2(handle, "eglGetCurrentDisplay");
   if( eglGetCurrentDisplay == NULL){ FUNC3(FUNC0()); return -1; }

   eglGetCurrentSurface = FUNC2(handle, "eglGetCurrentSurface");
   if( eglGetCurrentSurface == NULL){ FUNC3(FUNC0()); return -1; }

   eglGetCurrentContext = FUNC2(handle, "eglGetCurrentContext");
   if( eglGetCurrentContext == NULL){ FUNC3(FUNC0()); return -1; }

   eglQuerySurface      = FUNC2(handle, "eglQuerySurface");
   if( eglQuerySurface == NULL){ FUNC3(FUNC0()); return -1; }

   eglSwapInterval      = FUNC2(handle, "eglSwapInterval");
   if( eglSwapInterval == NULL){ FUNC3(FUNC0()); return -1; }

   eglMakeCurrent       = FUNC2(handle, "eglMakeCurrent");
   if( eglMakeCurrent == NULL){ FUNC3(FUNC0()); return -1; }

   eglSwapBuffers       = FUNC2(handle, "eglSwapBuffers");
   if( eglSwapBuffers == NULL){ FUNC3(FUNC0()); return -1; }

   eglQueryString       = FUNC2(handle, "eglQueryString");
   if( eglQueryString == NULL){ FUNC3(FUNC0()); return -1; }

   eglGetError          = FUNC2(handle, "eglGetError");
   if( eglGetError == NULL){ FUNC3(FUNC0()); return -1; }

   return 0;
}
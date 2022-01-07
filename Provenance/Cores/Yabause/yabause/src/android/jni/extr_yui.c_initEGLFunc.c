
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTLD_LAZY ;
 int dlerror () ;
 void* dlopen (char*,int ) ;
 void* dlsym (void*,char*) ;
 int * eglGetCurrentContext ;
 int * eglGetCurrentDisplay ;
 int * eglGetCurrentSurface ;
 int * eglGetError ;
 int * eglMakeCurrent ;
 int * eglQueryString ;
 int * eglQuerySurface ;
 int * eglSwapBuffers ;
 int * eglSwapInterval ;
 int yprintf (int ) ;

int initEGLFunc()
{
   void * handle;
   char *error;

   handle = dlopen("libEGL.so",RTLD_LAZY);
   if( handle == ((void*)0) )
   {
      yprintf(dlerror());
      return -1;
   }

   eglGetCurrentDisplay = dlsym(handle, "eglGetCurrentDisplay");
   if( eglGetCurrentDisplay == ((void*)0)){ yprintf(dlerror()); return -1; }

   eglGetCurrentSurface = dlsym(handle, "eglGetCurrentSurface");
   if( eglGetCurrentSurface == ((void*)0)){ yprintf(dlerror()); return -1; }

   eglGetCurrentContext = dlsym(handle, "eglGetCurrentContext");
   if( eglGetCurrentContext == ((void*)0)){ yprintf(dlerror()); return -1; }

   eglQuerySurface = dlsym(handle, "eglQuerySurface");
   if( eglQuerySurface == ((void*)0)){ yprintf(dlerror()); return -1; }

   eglSwapInterval = dlsym(handle, "eglSwapInterval");
   if( eglSwapInterval == ((void*)0)){ yprintf(dlerror()); return -1; }

   eglMakeCurrent = dlsym(handle, "eglMakeCurrent");
   if( eglMakeCurrent == ((void*)0)){ yprintf(dlerror()); return -1; }

   eglSwapBuffers = dlsym(handle, "eglSwapBuffers");
   if( eglSwapBuffers == ((void*)0)){ yprintf(dlerror()); return -1; }

   eglQueryString = dlsym(handle, "eglQueryString");
   if( eglQueryString == ((void*)0)){ yprintf(dlerror()); return -1; }

   eglGetError = dlsym(handle, "eglGetError");
   if( eglGetError == ((void*)0)){ yprintf(dlerror()); return -1; }

   return 0;
}

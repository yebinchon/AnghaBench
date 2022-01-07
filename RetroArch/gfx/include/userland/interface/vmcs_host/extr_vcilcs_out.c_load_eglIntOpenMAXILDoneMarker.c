
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VCOS_DL_GLOBAL ;
 int VCOS_DL_LAZY ;
 int VCOS_DL_LOCAL ;
 int * local_eglIntOpenMAXILDoneMarker ;
 int vc_assert (int ) ;
 int vcos_dlclose (void*) ;
 void* vcos_dlopen (char*,int) ;
 scalar_t__ vcos_dlsym (void*,char*) ;

__attribute__((used)) static void load_eglIntOpenMAXILDoneMarker(void)
{
   void *handle;





   handle = vcos_dlopen(((void*)0), VCOS_DL_GLOBAL);
   local_eglIntOpenMAXILDoneMarker = (void * )vcos_dlsym(handle, "eglIntOpenMAXILDoneMarker");
   if (local_eglIntOpenMAXILDoneMarker == ((void*)0))
   {
      vcos_dlclose(handle);

      handle = vcos_dlopen("libEGL.so", VCOS_DL_LAZY | VCOS_DL_LOCAL);
      vc_assert(handle != ((void*)0));
      local_eglIntOpenMAXILDoneMarker = (void * )vcos_dlsym(handle, "eglIntOpenMAXILDoneMarker");
      vc_assert(local_eglIntOpenMAXILDoneMarker != ((void*)0));
   }
}

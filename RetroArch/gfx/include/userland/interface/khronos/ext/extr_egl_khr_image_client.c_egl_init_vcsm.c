
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTLD_LAZY ;
 void* dlopen (char*,int ) ;
 void* dlsym (void*,char*) ;
 int vcos_log_error (char*) ;
 int * vcsm_free ;
 int * vcsm_malloc_cache ;
 int * vcsm_vc_hdl_from_hdl ;

__attribute__((used)) static bool egl_init_vcsm()
{



    static bool warn_once;
    bool success = 0;

    if (vcsm_malloc_cache)
       return 1;

    if (! vcsm_malloc_cache) {

        void *dl = dlopen("libvcsm.so", RTLD_LAZY);

        if (!dl)
           dl = dlopen("/opt/vc/lib/libvcsm.so", RTLD_LAZY);

        if (dl)
        {
           vcsm_malloc_cache = dlsym(dl, "vcsm_malloc_cache");
           vcsm_vc_hdl_from_hdl = dlsym(dl, "vcsm_vc_hdl_from_hdl");
           vcsm_free = dlsym(dl, "vcsm_free");

           if (vcsm_malloc_cache && vcsm_vc_hdl_from_hdl && vcsm_free)
           {
              success = 1;
           }
           else
           {
              vcsm_malloc_cache = ((void*)0);
              vcsm_vc_hdl_from_hdl = ((void*)0);
              vcsm_free = ((void*)0);
           }
        }
    }
    if (! success && ! warn_once)
    {
        vcos_log_error("Unable to load libvcsm.so for target EGL_IMAGE_BRCM_VCSM");
        warn_once = 0;
    }
    return success;

}

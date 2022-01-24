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
 void* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * vcsm_free ; 
 int /*<<< orphan*/ * vcsm_malloc_cache ; 
 int /*<<< orphan*/ * vcsm_vc_hdl_from_hdl ; 

__attribute__((used)) static bool FUNC3()
{
#ifdef KHRONOS_HAVE_VCSM
    return true;
#else
    static bool warn_once;
    bool success = false;

    if (vcsm_malloc_cache)
       return true;

    if (! vcsm_malloc_cache) {
        /* Try LD_LIBRARY_PATH first */
        void *dl = FUNC0("libvcsm.so", RTLD_LAZY);

        if (!dl)
           dl = FUNC0("/opt/vc/lib/libvcsm.so", RTLD_LAZY);

        if (dl)
        {
           vcsm_malloc_cache = FUNC1(dl, "vcsm_malloc_cache");
           vcsm_vc_hdl_from_hdl = FUNC1(dl, "vcsm_vc_hdl_from_hdl");
           vcsm_free = FUNC1(dl, "vcsm_free");

           if (vcsm_malloc_cache && vcsm_vc_hdl_from_hdl && vcsm_free)
           {
              success = true;
           }
           else
           {
              vcsm_malloc_cache = NULL;
              vcsm_vc_hdl_from_hdl = NULL;
              vcsm_free = NULL;
           }
        }
    }
    if (! success && ! warn_once)
    {
        FUNC2("Unable to load libvcsm.so for target EGL_IMAGE_BRCM_VCSM");
        warn_once = false;
    }
    return success;
#endif /* KHRONOS_HAVE_VCSM */
}
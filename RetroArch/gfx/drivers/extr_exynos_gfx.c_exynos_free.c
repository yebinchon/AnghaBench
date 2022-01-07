
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_data {int * device; int ** buf; int * pages; int num_pages; } ;


 unsigned int EXYNOS_BUFFER_COUNT ;
 int RARCH_WARN (char*) ;
 scalar_t__ drmModeSetCrtc (int ,int ,int ,int ,int ,int *,int ,int *) ;
 int exynos_bo_destroy (int *) ;
 int exynos_clean_up_pages (int *,int ) ;
 int exynos_device_destroy (int *) ;
 int free (int *) ;
 int g_crtc_id ;
 int g_drm_fd ;

__attribute__((used)) static void exynos_free(struct exynos_data *pdata)
{
   unsigned i;


   if (drmModeSetCrtc(g_drm_fd, g_crtc_id, 0,
            0, 0, ((void*)0), 0, ((void*)0)))
      RARCH_WARN("[video_exynos]: failed to disable the CRTC.\n");

   exynos_clean_up_pages(pdata->pages, pdata->num_pages);

   free(pdata->pages);
   pdata->pages = ((void*)0);

   for (i = 0; i < EXYNOS_BUFFER_COUNT; ++i)
   {
      exynos_bo_destroy(pdata->buf[i]);
      pdata->buf[i] = ((void*)0);
   }

   exynos_device_destroy(pdata->device);
   pdata->device = ((void*)0);
}

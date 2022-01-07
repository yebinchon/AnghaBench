
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_data {scalar_t__ size; scalar_t__ pitch; scalar_t__ bpp; scalar_t__ num_pages; scalar_t__ height; scalar_t__ width; } ;


 int drm_restore_crtc () ;
 int * g_drm_mode ;

__attribute__((used)) static void exynos_deinit(struct exynos_data *pdata)
{
   drm_restore_crtc();

   g_drm_mode = ((void*)0);
   pdata->width = 0;
   pdata->height = 0;
   pdata->num_pages = 0;
   pdata->bpp = 0;
   pdata->pitch = 0;
   pdata->size = 0;
}

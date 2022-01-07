
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_video {int * font; TYPE_1__* font_driver; int perf; int num_pages; int pages; struct exynos_video* data; } ;
struct exynos_data {int * font; TYPE_1__* font_driver; int perf; int num_pages; int pages; struct exynos_data* data; } ;
struct TYPE_2__ {int (* free ) (int *) ;} ;


 int drm_wait_flip (int) ;
 int exynos_close (struct exynos_video*) ;
 int exynos_deinit (struct exynos_video*) ;
 int exynos_free (struct exynos_video*) ;
 int exynos_g2d_free (struct exynos_video*) ;
 int exynos_pages_used (int ,int ) ;
 int exynos_perf_finish (int *) ;
 int free (struct exynos_video*) ;
 int stub1 (int *) ;

__attribute__((used)) static void exynos_gfx_free(void *data)
{
   struct exynos_video *vid = data;
   struct exynos_data *pdata;

   if (!vid)
      return;

   pdata = vid->data;

   exynos_g2d_free(pdata);


   while (exynos_pages_used(pdata->pages, pdata->num_pages) > 1)
      drm_wait_flip(-1);

   exynos_free(pdata);
   exynos_deinit(pdata);
   exynos_close(pdata);





   free(pdata);

   if (vid->font != ((void*)0) && vid->font_driver != ((void*)0))
      vid->font_driver->free(vid->font);

   free(vid);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g2d_image {int * bo; } ;
struct exynos_page {int clear; int used; TYPE_1__* bo; } ;
struct exynos_data {int g2d; int num_pages; int pages; struct g2d_image* dst; } ;
struct TYPE_2__ {int handle; } ;


 int drm_wait_flip (int) ;
 scalar_t__ exynos_clear_buffer (int ,struct g2d_image*) ;
 struct exynos_page* exynos_get_free_page (int ,int ) ;

__attribute__((used)) static struct exynos_page *exynos_free_page(struct exynos_data *pdata)
{
   struct exynos_page *page = ((void*)0);
   struct g2d_image *dst = pdata->dst;


   while (!page)
   {
      page = exynos_get_free_page(pdata->pages, pdata->num_pages);

      if (!page)
         drm_wait_flip(-1);
   }

   dst->bo[0] = page->bo->handle;

   if (page->clear)
   {
      if (exynos_clear_buffer(pdata->g2d, dst) == 0)
         page->clear = 0;
   }

   page->used = 1;
   return page;
}

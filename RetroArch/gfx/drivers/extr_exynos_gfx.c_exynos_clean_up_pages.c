
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_page {scalar_t__ buf_id; TYPE_1__* bo; } ;
struct TYPE_2__ {int handle; } ;


 int drmModeRmFB (scalar_t__,int ) ;
 int exynos_bo_destroy (TYPE_1__*) ;

__attribute__((used)) static void exynos_clean_up_pages(struct exynos_page *p, unsigned cnt)
{
   unsigned i;

   for (i = 0; i < cnt; ++i)
   {
      if (p[i].bo != ((void*)0))
      {
         if (p[i].buf_id != 0)
            drmModeRmFB(p[i].buf_id, p[i].bo->handle);

         exynos_bo_destroy(p[i].bo);
      }
   }
}

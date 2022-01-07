
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_data {unsigned int num_pages; TYPE_1__* pages; scalar_t__ height; scalar_t__* blit_params; scalar_t__ width; } ;
struct TYPE_2__ {int clear; } ;



__attribute__((used)) static void exynos_set_fake_blit(struct exynos_data *pdata)
{
   unsigned i;

   pdata->blit_params[0] = 0;
   pdata->blit_params[1] = 0;
   pdata->blit_params[2] = pdata->width;
   pdata->blit_params[3] = pdata->height;

   for (i = 0; i < pdata->num_pages; ++i)
      pdata->pages[i].clear = 1;
}

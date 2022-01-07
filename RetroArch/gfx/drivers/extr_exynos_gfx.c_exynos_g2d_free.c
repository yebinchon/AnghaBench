
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_data {int g2d; int ** src; int * dst; } ;


 unsigned int EXYNOS_IMAGE_COUNT ;
 int free (int *) ;
 int g2d_fini (int ) ;

__attribute__((used)) static void exynos_g2d_free(struct exynos_data *pdata)
{
   unsigned i;

   free(pdata->dst);

   for (i = 0; i < EXYNOS_IMAGE_COUNT; ++i)
   {
      free(pdata->src[i]);
      pdata->src[i] = ((void*)0);
   }

   g2d_fini(pdata->g2d);
}

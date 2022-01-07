
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_page {int used; } ;



__attribute__((used)) static struct exynos_page *exynos_get_free_page(
      struct exynos_page *p, unsigned cnt)
{
   unsigned i;

   for (i = 0; i < cnt; ++i)
   {
      if (!p[i].used)
         return &p[i];
   }

   return ((void*)0);
}

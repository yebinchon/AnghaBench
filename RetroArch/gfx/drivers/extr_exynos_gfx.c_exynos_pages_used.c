
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_page {scalar_t__ used; } ;



__attribute__((used)) static unsigned exynos_pages_used(struct exynos_page *p, unsigned cnt)
{
   unsigned i;
   unsigned count = 0;

   for (i = 0; i < cnt; ++i)
   {
      if (p[i].used)
         ++count;
   }

   return count;
}

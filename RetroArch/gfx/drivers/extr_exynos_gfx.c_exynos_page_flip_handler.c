
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_page {int used; TYPE_1__* base; } ;
struct TYPE_2__ {struct exynos_page* cur_page; int pageflip_pending; } ;


 int RARCH_LOG (char*,struct exynos_page*) ;

__attribute__((used)) static void exynos_page_flip_handler(int fd, unsigned frame, unsigned sec,
      unsigned usec, void *data)
{
   struct exynos_page *page = data;





   if (page->base->cur_page)
      page->base->cur_page->used = 0;

   page->base->pageflip_pending--;
   page->base->cur_page = page;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int used; } ;
typedef TYPE_1__ omapfb_page_t ;
struct TYPE_6__ {unsigned int num_pages; TYPE_1__* pages; TYPE_1__* old_page; TYPE_1__* cur_page; } ;
typedef TYPE_2__ omapfb_data_t ;



__attribute__((used)) static omapfb_page_t *omapfb_get_page(omapfb_data_t *pdata)
{
   unsigned i;
   omapfb_page_t *page = ((void*)0);

   for (i = 0; i < pdata->num_pages; ++i)
   {
      if (&pdata->pages[i] == pdata->cur_page)
         continue;
      if (&pdata->pages[i] == pdata->old_page)
         continue;

      if (!pdata->pages[i].used)
      {
         page = &pdata->pages[i];
         break;
      }
   }

   return page;
}

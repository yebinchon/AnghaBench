
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int used; } ;
typedef TYPE_1__ omapfb_page_t ;
struct TYPE_8__ {TYPE_1__* cur_page; TYPE_1__* old_page; } ;
typedef TYPE_2__ omapfb_data_t ;


 TYPE_1__* omapfb_get_page (TYPE_2__*) ;
 int omapfb_page_flip (TYPE_2__*) ;
 int retro_assert (int ) ;

__attribute__((used)) static void omapfb_prepare(omapfb_data_t *pdata)
{
   omapfb_page_t *page = ((void*)0);


   omapfb_page_flip(pdata);

   page = omapfb_get_page(pdata);

   retro_assert(page != ((void*)0));

   pdata->old_page = pdata->cur_page;
   pdata->cur_page = page;

   pdata->cur_page->used = 1;
}

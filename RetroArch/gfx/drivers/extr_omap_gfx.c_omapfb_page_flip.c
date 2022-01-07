
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* old_page; TYPE_3__* current_state; int fd; TYPE_2__* cur_page; scalar_t__ sync; } ;
typedef TYPE_5__ omapfb_data_t ;
struct TYPE_10__ {int yoffset; } ;
struct TYPE_9__ {TYPE_4__ si; } ;
struct TYPE_8__ {int yoffset; } ;
struct TYPE_7__ {int used; } ;


 int FBIOPAN_DISPLAY ;
 int OMAPFB_WAITFORGO ;
 int ioctl (int ,int ,...) ;

__attribute__((used)) static void omapfb_page_flip(omapfb_data_t *pdata)
{
   if (pdata->sync)
      ioctl(pdata->fd, OMAPFB_WAITFORGO);



   pdata->current_state->si.yoffset = pdata->cur_page->yoffset;
   ioctl(pdata->fd, FBIOPAN_DISPLAY, &pdata->current_state->si);

   if (pdata->old_page)
      pdata->old_page->used = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * fb_mem; int fd; TYPE_2__* current_state; } ;
typedef TYPE_3__ omapfb_data_t ;
struct TYPE_5__ {int size; } ;
struct TYPE_6__ {TYPE_1__ mi; } ;


 int * MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_WRITE ;
 int RARCH_ERR (char*) ;
 int * mmap (int *,int ,int ,int ,int ,int ) ;
 int retro_assert (int ) ;

__attribute__((used)) static int omapfb_mmap(omapfb_data_t *pdata)
{
   retro_assert(pdata->fb_mem == ((void*)0));

   pdata->fb_mem = mmap(((void*)0), pdata->current_state->mi.size, PROT_WRITE,
         MAP_SHARED, pdata->fd, 0);

   if (pdata->fb_mem == MAP_FAILED)
   {
      pdata->fb_mem = ((void*)0);
      RARCH_ERR("[video_omap]: framebuffer mmap failed\n");

      return -1;
   }

   return 0;
}

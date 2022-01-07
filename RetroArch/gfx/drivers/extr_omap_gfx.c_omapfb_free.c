
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fd; void* fb_mem; TYPE_4__* current_state; TYPE_4__* saved_state; scalar_t__ sync; } ;
typedef TYPE_2__ omapfb_data_t ;
struct TYPE_6__ {int enabled; int size; } ;
struct TYPE_8__ {struct TYPE_8__* mem; TYPE_1__ si; TYPE_1__ mi; TYPE_1__ pi; } ;


 int FBIOPUT_VSCREENINFO ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int OMAPFB_SETUP_MEM ;
 int OMAPFB_SETUP_PLANE ;
 int OMAPFB_WAITFORGO ;
 int PROT_READ ;
 int PROT_WRITE ;
 int close (int) ;
 int free (TYPE_4__*) ;
 int ioctl (int,int ,...) ;
 int memcpy (void*,TYPE_4__*,int ) ;
 void* mmap (int ,int ,int,int ,int,int ) ;
 int munmap (void*,int ) ;

void omapfb_free(omapfb_data_t *pdata)
{
   if (pdata->sync)
      ioctl(pdata->fd, OMAPFB_WAITFORGO);


   if (pdata->fb_mem)
   {
      munmap(pdata->fb_mem, pdata->current_state->mi.size);
      pdata->fb_mem = ((void*)0);
   }


   if (pdata->saved_state)
   {
      void *mem;
      int enabled = pdata->saved_state->pi.enabled;


      pdata->saved_state->pi.enabled = 0;
      ioctl(pdata->fd, OMAPFB_SETUP_PLANE, &pdata->saved_state->pi);
      ioctl(pdata->fd, OMAPFB_SETUP_MEM, &pdata->saved_state->mi);

      if (enabled)
      {
         pdata->saved_state->pi.enabled = enabled;
         ioctl(pdata->fd, OMAPFB_SETUP_PLANE, &pdata->saved_state->pi);
      }


      mem = mmap(0, pdata->saved_state->mi.size, PROT_WRITE|PROT_READ,
            MAP_SHARED, pdata->fd, 0);

      if (mem != MAP_FAILED)
      {
         memcpy(mem, pdata->saved_state->mem, pdata->saved_state->mi.size);
         munmap(mem, pdata->saved_state->mi.size);
      }


      ioctl(pdata->fd, FBIOPUT_VSCREENINFO, &pdata->saved_state->si);

      free(pdata->saved_state->mem);
      pdata->saved_state->mem = ((void*)0);

      free(pdata->saved_state);
      pdata->saved_state = ((void*)0);
   }

   free(pdata->current_state);
   pdata->current_state = ((void*)0);

   close(pdata->fd);
   pdata->fd = -1;
}

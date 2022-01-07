
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int omapfb_state_t ;
struct TYPE_5__ {TYPE_4__* saved_state; int fd; } ;
typedef TYPE_1__ omapfb_data_t ;
struct TYPE_6__ {int size; } ;
struct TYPE_7__ {TYPE_3__ mi; int * mem; TYPE_3__ si; TYPE_3__ pi; } ;


 int FBIOGET_VSCREENINFO ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int OMAPFB_QUERY_MEM ;
 int OMAPFB_QUERY_PLANE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int RARCH_ERR (char*) ;
 TYPE_4__* calloc (int,int) ;
 scalar_t__ ioctl (int ,int ,TYPE_3__*) ;
 int * malloc (int ) ;
 int memcpy (int *,void*,int ) ;
 void* mmap (int *,int ,int,int ,int ,int ) ;
 int munmap (void*,int ) ;
 int retro_assert (int ) ;

__attribute__((used)) static int omapfb_backup_state(omapfb_data_t *pdata)
{
   void* mem = ((void*)0);

   retro_assert(pdata->saved_state == ((void*)0));

   pdata->saved_state = calloc(1, sizeof(omapfb_state_t));
   if (!pdata->saved_state) return -1;

   if (ioctl(pdata->fd, OMAPFB_QUERY_PLANE, &pdata->saved_state->pi) != 0)
   {
      RARCH_ERR("[video_omap]: backup layer (plane) failed\n");
      return -1;
   }

   if (ioctl(pdata->fd, OMAPFB_QUERY_MEM, &pdata->saved_state->mi) != 0)
   {
      RARCH_ERR("[video_omap]: backup layer (mem) failed\n");
      return -1;
   }

   if (ioctl(pdata->fd, FBIOGET_VSCREENINFO, &pdata->saved_state->si) != 0)
   {
      RARCH_ERR("[video_omap]: backup layer (screeninfo) failed\n");
      return -1;
   }

   pdata->saved_state->mem = malloc(pdata->saved_state->mi.size);
   mem = mmap(((void*)0), pdata->saved_state->mi.size, PROT_WRITE|PROT_READ,
         MAP_SHARED, pdata->fd, 0);
   if (pdata->saved_state->mem == ((void*)0) || mem == MAP_FAILED)
   {
      RARCH_ERR("[video_omap]: backup layer (mem backup) failed\n");
      munmap(mem, pdata->saved_state->mi.size);
      return -1;
   }
   memcpy(pdata->saved_state->mem, mem, pdata->saved_state->mi.size);
   munmap(mem, pdata->saved_state->mi.size);

   return 0;
}

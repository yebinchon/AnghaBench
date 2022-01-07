
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int videomode ;
typedef int uint32_t ;
typedef unsigned int uint16_t ;
struct TYPE_9__ {int id; int idx; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_10__ {int check; int count; int* list; TYPE_2__ current; TYPE_1__ initial; } ;
struct TYPE_11__ {TYPE_3__ resolutions; } ;
struct TYPE_12__ {TYPE_4__ screen; } ;
struct TYPE_13__ {TYPE_5__ console; } ;
typedef TYPE_6__ global_t ;


 int CELL_VIDEO_OUT_ASPECT_AUTO ;
 int CELL_VIDEO_OUT_PRIMARY ;
 int CELL_VIDEO_OUT_RESOLUTION_1080 ;
 int CELL_VIDEO_OUT_RESOLUTION_1280x1080 ;
 int CELL_VIDEO_OUT_RESOLUTION_1440x1080 ;
 int CELL_VIDEO_OUT_RESOLUTION_1600x1080 ;
 int CELL_VIDEO_OUT_RESOLUTION_480 ;
 int CELL_VIDEO_OUT_RESOLUTION_576 ;
 int CELL_VIDEO_OUT_RESOLUTION_720 ;
 int CELL_VIDEO_OUT_RESOLUTION_960x1080 ;
 scalar_t__ cellVideoOutGetResolutionAvailability (int ,int,int ,int ) ;
 TYPE_6__* global_get_ptr () ;
 int* malloc (int) ;

__attribute__((used)) static void gfx_ctx_ps3_get_available_resolutions(void)
{
   unsigned i;
   uint32_t videomode[] = {
      CELL_VIDEO_OUT_RESOLUTION_480,
      CELL_VIDEO_OUT_RESOLUTION_576,
      CELL_VIDEO_OUT_RESOLUTION_960x1080,
      CELL_VIDEO_OUT_RESOLUTION_720,
      CELL_VIDEO_OUT_RESOLUTION_1280x1080,
      CELL_VIDEO_OUT_RESOLUTION_1440x1080,
      CELL_VIDEO_OUT_RESOLUTION_1600x1080,
      CELL_VIDEO_OUT_RESOLUTION_1080
   };
   uint32_t resolution_count = 0;
   bool defaultresolution = 1;
   uint16_t num_videomodes = sizeof(videomode) / sizeof(uint32_t);
   global_t *global = global_get_ptr();

   if (global->console.screen.resolutions.check)
      return;

   for (i = 0; i < num_videomodes; i++)
   {
      if (cellVideoOutGetResolutionAvailability(
               CELL_VIDEO_OUT_PRIMARY, videomode[i],
               CELL_VIDEO_OUT_ASPECT_AUTO, 0))
         resolution_count++;
   }

   global->console.screen.resolutions.count = 0;
   global->console.screen.resolutions.list =
      malloc(resolution_count * sizeof(uint32_t));

   for (i = 0; i < num_videomodes; i++)
   {
      if (cellVideoOutGetResolutionAvailability(
               CELL_VIDEO_OUT_PRIMARY,
               videomode[i],
               CELL_VIDEO_OUT_ASPECT_AUTO, 0))
      {
         global->console.screen.resolutions.list[
            global->console.screen.resolutions.count++] = videomode[i];
         global->console.screen.resolutions.initial.id = videomode[i];

         if (global->console.screen.resolutions.current.id == videomode[i])
         {
            defaultresolution = 0;
            global->console.screen.resolutions.current.idx =
               global->console.screen.resolutions.count-1;
         }
      }
   }





   if (global->console.screen.resolutions.current.id > num_videomodes || defaultresolution)
    {
      global->console.screen.resolutions.current.idx = resolution_count - 1;
      global->console.screen.resolutions.current.id = global->console.screen.resolutions.list[global->console.screen.resolutions.current.idx];
    }

   global->console.screen.resolutions.check = 1;
}

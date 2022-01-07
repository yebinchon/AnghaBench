
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int width; int height; } ;
struct TYPE_6__ {scalar_t__ nextWaitMethod; char* description; } ;
struct TYPE_5__ {int framerate; int timeout; scalar_t__ waitMethod; int camera_parameters; int preview_parameters; int bCapturing; TYPE_3__ common_settings; } ;
typedef TYPE_1__ RASPIVIDYUV_STATE ;


 int fprintf (int ,char*,...) ;
 int initial_map ;
 int initial_map_size ;
 int raspicamcontrol_dump_parameters (int *) ;
 char* raspicli_unmap_xref (int ,int ,int ) ;
 int raspicommonsettings_dump_parameters (TYPE_3__*) ;
 int raspipreview_dump_parameters (int *) ;
 int stderr ;
 int vcos_assert (int ) ;
 TYPE_2__* wait_method_description ;
 int wait_method_description_size ;

__attribute__((used)) static void dump_status(RASPIVIDYUV_STATE *state)
{
   int i, size, ystride, yheight;

   if (!state)
   {
      vcos_assert(0);
      return;
   }

   raspicommonsettings_dump_parameters(&state->common_settings);

   fprintf(stderr, "framerate %d, time delay %d\n", state->framerate, state->timeout);






   ystride = ((state->common_settings.width + 31) & ~31);
   yheight = ((state->common_settings.height + 15) & ~15);

   size = ystride * yheight;


   size += 2 * ystride/2 * yheight/2;

   fprintf(stderr, "Sub-image size %d bytes in total.\n  Y pitch %d, Y height %d, UV pitch %d, UV Height %d\n", size, ystride, yheight, ystride/2,yheight/2);

   fprintf(stderr, "Wait method : ");
   for (i=0; i<wait_method_description_size; i++)
   {
      if (state->waitMethod == wait_method_description[i].nextWaitMethod)
         fprintf(stderr, "%s", wait_method_description[i].description);
   }
   fprintf(stderr, "\nInitial state '%s'\n", raspicli_unmap_xref(state->bCapturing, initial_map, initial_map_size));
   fprintf(stderr, "\n");

   raspipreview_dump_parameters(&state->preview_parameters);
   raspicamcontrol_dump_parameters(&state->camera_parameters);
}

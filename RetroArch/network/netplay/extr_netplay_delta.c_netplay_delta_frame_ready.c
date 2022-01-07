
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct delta_frame {int used; scalar_t__ frame; int have_local; int* have_real; int * simlated_input; int * real_input; int * resolved_input; scalar_t__ crc; } ;
struct TYPE_3__ {scalar_t__ other_frame_count; } ;
typedef TYPE_1__ netplay_t ;


 size_t MAX_CLIENTS ;
 size_t MAX_INPUT_DEVICES ;
 int clear_input (int ) ;

bool netplay_delta_frame_ready(netplay_t *netplay, struct delta_frame *delta,
   uint32_t frame)
{
   size_t i;
   if (delta->used)
   {
      if (delta->frame == frame)
         return 1;


      if (netplay->other_frame_count <= delta->frame)
         return 0;
   }

   delta->used = 1;
   delta->frame = frame;
   delta->crc = 0;

   for (i = 0; i < MAX_INPUT_DEVICES; i++)
   {
      clear_input(delta->resolved_input[i]);
      clear_input(delta->real_input[i]);
      clear_input(delta->simlated_input[i]);
   }
   delta->have_local = 0;
   for (i = 0; i < MAX_CLIENTS; i++)
      delta->have_real[i] = 0;
   return 1;
}

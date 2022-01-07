
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct delta_frame {int * simlated_input; int * real_input; int * resolved_input; int * state; } ;


 size_t MAX_INPUT_DEVICES ;
 int free (int *) ;
 int free_input_state (int *) ;

void netplay_delta_frame_free(struct delta_frame *delta)
{
   uint32_t i;

   if (delta->state)
   {
      free(delta->state);
      delta->state = ((void*)0);
   }

   for (i = 0; i < MAX_INPUT_DEVICES; i++)
   {
      free_input_state(&delta->resolved_input[i]);
      free_input_state(&delta->real_input[i]);
      free_input_state(&delta->simlated_input[i]);
   }
}

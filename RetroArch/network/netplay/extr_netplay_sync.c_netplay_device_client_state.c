
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct delta_frame {scalar_t__ frame; int * simlated_input; int * real_input; } ;
struct TYPE_4__ {scalar_t__* read_frame_count; } ;
typedef TYPE_1__ netplay_t ;
typedef int * netplay_input_state_t ;


 int netplay_expected_input_size (TYPE_1__*,int) ;
 int * netplay_input_state_for (int *,int,int,int,int) ;

netplay_input_state_t netplay_device_client_state(netplay_t *netplay,
      struct delta_frame *simframe, uint32_t device, uint32_t client)
{
   uint32_t dsize =
      netplay_expected_input_size(netplay, 1 << device);
   netplay_input_state_t simstate =
      netplay_input_state_for(
         &simframe->real_input[device], client,
         dsize, 0, 1);

   if (!simstate)
   {
      if (netplay->read_frame_count[client] > simframe->frame)
         return ((void*)0);
      simstate = netplay_input_state_for(&simframe->simlated_input[device],
            client, dsize, 0, 1);
   }
   return simstate;
}

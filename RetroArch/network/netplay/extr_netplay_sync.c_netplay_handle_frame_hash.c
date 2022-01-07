
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct delta_frame {int frame; scalar_t__ crc; } ;
struct TYPE_6__ {scalar_t__ check_frames; int crcs_valid; int crc_validity_checked; scalar_t__ is_server; } ;
typedef TYPE_1__ netplay_t ;


 int RARCH_ERR (char*) ;
 int abs (scalar_t__) ;
 int netplay_cmd_crc (TYPE_1__*,struct delta_frame*) ;
 int netplay_cmd_request_savestate (TYPE_1__*) ;
 void* netplay_delta_frame_crc (TYPE_1__*,struct delta_frame*) ;

__attribute__((used)) static void netplay_handle_frame_hash(netplay_t *netplay,
      struct delta_frame *delta)
{
   if (netplay->is_server)
   {
      if (netplay->check_frames &&
          delta->frame % abs(netplay->check_frames) == 0)
      {
         delta->crc = netplay_delta_frame_crc(netplay, delta);
         netplay_cmd_crc(netplay, delta);
      }
   }
   else if (delta->crc && netplay->crcs_valid)
   {

      uint32_t local_crc = netplay_delta_frame_crc(netplay, delta);
      if (local_crc != delta->crc)
      {


         if (!netplay->crc_validity_checked)
            netplay->crcs_valid = 0;
         else if (netplay->crcs_valid)
         {

            if (netplay->check_frames < 0)
            {

               RARCH_ERR("Netplay CRCs mismatch!\n");
            }
            else
               netplay_cmd_request_savestate(netplay);
         }
      }
      else if (!netplay->crc_validity_checked)
         netplay->crc_validity_checked = 1;
   }
}

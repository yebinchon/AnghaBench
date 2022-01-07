
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct delta_frame {int crc; int frame; } ;
typedef int payload ;
struct TYPE_5__ {size_t connections_size; TYPE_3__* connections; } ;
typedef TYPE_1__ netplay_t ;
struct TYPE_6__ {scalar_t__ mode; scalar_t__ active; } ;


 int NETPLAY_CMD_CRC ;
 scalar_t__ NETPLAY_CONNECTION_CONNECTED ;
 int htonl (int ) ;
 scalar_t__ netplay_send_raw_cmd (TYPE_1__*,TYPE_3__*,int ,int *,int) ;

bool netplay_cmd_crc(netplay_t *netplay, struct delta_frame *delta)
{
   uint32_t payload[2];
   bool success = 1;
   size_t i;
   payload[0] = htonl(delta->frame);
   payload[1] = htonl(delta->crc);
   for (i = 0; i < netplay->connections_size; i++)
   {
      if (netplay->connections[i].active &&
            netplay->connections[i].mode >= NETPLAY_CONNECTION_CONNECTED)
         success = netplay_send_raw_cmd(netplay, &netplay->connections[i],
            NETPLAY_CMD_CRC, payload, sizeof(payload)) && success;
   }
   return success;
}

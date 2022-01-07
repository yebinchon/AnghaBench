
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int cycles; int thb_write_time; int escape_count; int connectstatus; int outbufferupdate; int connect_timeout; int connect_time; int internet_enable; void* modemstate; } ;


 int NETLINK_LOG (char*) ;



 int NL_CONNECTSTATUS_LOGIN1 ;
 void* NL_MODEMSTATE_COMMAND ;
 void* NL_MODEMSTATE_DATA ;
 TYPE_1__* NetlinkArea ;
 int NetlinkDoATResponse (char*) ;
 int NetlinkMSRChange (int,int) ;
 int NetlinkUpdateReceivedDataInt () ;
 int NetworkStopConnect () ;
 int NetworkWaitForConnect () ;

void NetlinkExec(u32 timing)
{
   NetlinkArea->cycles += timing;
   NetlinkArea->connect_time += timing;
   if (NetlinkArea->thb_write_time != 0xFFFFFFFF)
      NetlinkArea->thb_write_time += timing;

   if (NetlinkArea->cycles >= 20000)
   {
      NetlinkArea->cycles -= 20000;

      if (NetlinkArea->escape_count == 3 && NetlinkArea->thb_write_time >= 1000000)
      {

         NETLINK_LOG("Detected escape sequence, switching back to command mode\n");
         NetlinkArea->modemstate = NL_MODEMSTATE_COMMAND;
      }

      switch(NetlinkArea->connectstatus)
      {
         case 128:
         {
            break;
         }
         case 130:
         {
            break;
         }
         case 129:
         {
            break;
         }
         default: break;
      }
   }
}

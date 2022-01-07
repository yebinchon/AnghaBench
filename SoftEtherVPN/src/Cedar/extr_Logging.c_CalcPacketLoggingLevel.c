
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int LogSetting; } ;
typedef int PKT ;
typedef TYPE_1__ HUB ;


 int CalcPacketLoggingLevelEx (int *,int *) ;
 int PACKET_LOG_NONE ;

UINT CalcPacketLoggingLevel(HUB *hub, PKT *packet)
{

 if (hub == ((void*)0) || packet == ((void*)0))
 {
  return PACKET_LOG_NONE;
 }

 return CalcPacketLoggingLevelEx(&hub->LogSetting, packet);
}

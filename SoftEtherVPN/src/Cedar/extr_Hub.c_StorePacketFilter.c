
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Hub; } ;
typedef TYPE_1__ SESSION ;
typedef int PKT ;


 int ApplyAccessListToStoredPacket (int ,TYPE_1__*,int *) ;
 int StorePacketFilterByPolicy (TYPE_1__*,int *) ;
 int StorePacketFilterByTrafficLimiter (TYPE_1__*,int *) ;

bool StorePacketFilter(SESSION *s, PKT *packet)
{

 if (s == ((void*)0) || packet == ((void*)0))
 {
  return 0;
 }


 if (StorePacketFilterByTrafficLimiter(s, packet) == 0)
 {
  return 0;
 }


 if (StorePacketFilterByPolicy(s, packet) == 0)
 {
  return 0;
 }


 if (ApplyAccessListToStoredPacket(s->Hub, s, packet) == 0)
 {
  return 0;
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int DisconnectCount; scalar_t__ SessionEstablishedCount; } ;
typedef TYPE_1__ OPENVPN_SERVER ;



bool OvsIsOk(void *param)
{
 OPENVPN_SERVER *s;

 if (param == ((void*)0))
 {
  return 0;
 }

 s = param;

 return (s->DisconnectCount < 1) && (s->SessionEstablishedCount > 0);
}

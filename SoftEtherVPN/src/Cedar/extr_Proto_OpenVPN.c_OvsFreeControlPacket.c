
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Data; } ;
typedef TYPE_1__ OPENVPN_CONTROL_PACKET ;


 int Free (TYPE_1__*) ;

void OvsFreeControlPacket(OPENVPN_CONTROL_PACKET *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 if (p->Data != ((void*)0))
 {
  Free(p->Data);
 }

 Free(p);
}

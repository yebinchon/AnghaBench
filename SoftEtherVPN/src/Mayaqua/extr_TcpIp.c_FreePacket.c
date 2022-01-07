
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int TypeL3; struct TYPE_7__* HttpLog; int * MacHeader; } ;
typedef TYPE_1__ PKT ;


 int Free (TYPE_1__*) ;
 int FreePacketARPv4 (TYPE_1__*) ;
 int FreePacketIPv4 (TYPE_1__*) ;
 int FreePacketTagVlan (TYPE_1__*) ;




void FreePacket(PKT *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 if (p->MacHeader != ((void*)0))
 {
  switch (p->TypeL3)
  {
  case 129:
   FreePacketIPv4(p);
   break;

  case 130:
   FreePacketARPv4(p);
   break;

  case 128:
   FreePacketTagVlan(p);
   break;
  }
 }

 if (p->HttpLog != ((void*)0))
 {
  Free(p->HttpLog);
 }

 Free(p);
}

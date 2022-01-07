
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VH ;
typedef int UINT ;
struct TYPE_5__ {TYPE_1__* PacketAdapter; } ;
struct TYPE_4__ {scalar_t__ Param; } ;
typedef TYPE_2__ SESSION ;


 int INFINITE ;
 int VirtualGetNextPacket (int *,void**) ;

UINT VirtualPaGetNextPacket(SESSION *s, void **data)
{
 VH *v;

 if (s == ((void*)0) || (v = (VH *)s->PacketAdapter->Param) == ((void*)0))
 {
  return INFINITE;
 }

 return VirtualGetNextPacket(v, data);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VH ;
struct TYPE_5__ {TYPE_1__* PacketAdapter; } ;
struct TYPE_4__ {scalar_t__ Param; } ;
typedef TYPE_2__ SESSION ;


 int Virtual_Free (int *) ;

void VirtualPaFree(SESSION *s)
{
 VH *v;

 if (s == ((void*)0) || (v = (VH *)s->PacketAdapter->Param) == ((void*)0))
 {
  return;
 }

 Virtual_Free(v);
}

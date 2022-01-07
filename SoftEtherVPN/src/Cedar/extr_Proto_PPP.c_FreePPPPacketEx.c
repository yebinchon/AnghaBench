
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Data; int Lcp; } ;
typedef TYPE_1__ PPP_PACKET ;


 int Free (TYPE_1__*) ;
 int FreePPPLCP (int ) ;

void FreePPPPacketEx(PPP_PACKET *pp, bool no_free_struct)
{

 if (pp == ((void*)0))
 {
  return;
 }

 FreePPPLCP(pp->Lcp);

 Free(pp->Data);

 if (no_free_struct == 0)
 {
  Free(pp);
 }
}

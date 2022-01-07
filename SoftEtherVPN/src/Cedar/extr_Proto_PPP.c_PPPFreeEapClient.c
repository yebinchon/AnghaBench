
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * EapClient; } ;
typedef TYPE_1__ PPP_SESSION ;


 int ReleaseEapClient (int *) ;

void PPPFreeEapClient(PPP_SESSION *p)
{
 if (p == ((void*)0))
 {
  return;
 }

 if (p->EapClient != ((void*)0))
 {
  ReleaseEapClient(p->EapClient);
  p->EapClient = ((void*)0);
 }
}

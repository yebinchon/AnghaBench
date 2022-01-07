
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Access; int NoBridge; int NoRouting; int MonitorPort; int MaxConnection; int TimeOut; int FixPassword; } ;
typedef TYPE_1__ POLICY ;



void NormalizeLinkPolicy(POLICY *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 p->Access = 1;
 p->NoBridge = p->NoRouting = p->MonitorPort = 0;
 p->MaxConnection = 32;
 p->TimeOut = 20;
 p->FixPassword = 0;
}

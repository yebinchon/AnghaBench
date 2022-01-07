
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Halt; int Print; int Param; } ;
typedef TYPE_1__ TTC ;


 int TtPrint (int ,int ,int ) ;
 int _UU (char*) ;

void StopTtc(TTC *ttc)
{

 if (ttc == ((void*)0))
 {
  return;
 }

 TtPrint(ttc->Param, ttc->Print, _UU("TTC_STOPPING"));

 ttc->Halt = 1;
}

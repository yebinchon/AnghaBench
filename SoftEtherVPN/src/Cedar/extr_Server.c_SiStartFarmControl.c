
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ServerType; int FarmControlThread; int FarmControlThreadHaltEvent; } ;
typedef TYPE_1__ SERVER ;


 int NewEvent () ;
 int NewThread (int ,TYPE_1__*) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 int SiFarmControlThread ;

void SiStartFarmControl(SERVER *s)
{

 if (s == ((void*)0) || s->ServerType != SERVER_TYPE_FARM_CONTROLLER)
 {
  return;
 }

 s->FarmControlThreadHaltEvent = NewEvent();
 s->FarmControlThread = NewThread(SiFarmControlThread, s);
}

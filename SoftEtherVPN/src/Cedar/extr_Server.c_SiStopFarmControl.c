
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ServerType; int FarmControlThread; int FarmControlThreadHaltEvent; } ;
typedef TYPE_1__ SERVER ;


 int INFINITE ;
 int ReleaseEvent (int ) ;
 int ReleaseThread (int ) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 int Set (int ) ;
 int WaitThread (int ,int ) ;

void SiStopFarmControl(SERVER *s)
{

 if (s == ((void*)0) || s->ServerType != SERVER_TYPE_FARM_CONTROLLER)
 {
  return;
 }

 Set(s->FarmControlThreadHaltEvent);
 WaitThread(s->FarmControlThread, INFINITE);
 ReleaseEvent(s->FarmControlThreadHaltEvent);
 ReleaseThread(s->FarmControlThread);
}

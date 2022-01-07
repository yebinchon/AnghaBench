
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * Response; int * Request; int CompleteEvent; } ;
typedef int PACK ;
typedef TYPE_1__ FARM_TASK ;


 int Free (TYPE_1__*) ;
 int FreePack (int *) ;
 int INFINITE ;
 scalar_t__ PackGetInt (int *,char*) ;
 int ReleaseEvent (int ) ;
 int Wait (int ,int ) ;

PACK *SiFarmServWaitTask(FARM_TASK *t)
{
 PACK *response;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 Wait(t->CompleteEvent, INFINITE);
 ReleaseEvent(t->CompleteEvent);
 FreePack(t->Request);

 response = t->Response;
 Free(t);

 if (PackGetInt(response, "succeed") == 0)
 {

  FreePack(response);
  return ((void*)0);
 }

 return response;
}

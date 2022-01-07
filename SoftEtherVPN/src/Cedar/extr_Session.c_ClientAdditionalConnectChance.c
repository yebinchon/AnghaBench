
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_8__ {int EnableUdpRecovery; scalar_t__ MaxConnection; scalar_t__ NextConnectionTime; TYPE_2__* ClientOption; TYPE_1__* Connection; scalar_t__ Halt; scalar_t__ IsRUDPSession; scalar_t__ ServerMode; } ;
struct TYPE_7__ {scalar_t__ AdditionalConnectionInterval; } ;
struct TYPE_6__ {scalar_t__ Protocol; scalar_t__ AdditionalConnectionFailedCounter; int CurrentNumConnection; } ;
typedef TYPE_3__ SESSION ;


 scalar_t__ CONNECTION_TCP ;
 scalar_t__ Count (int ) ;
 scalar_t__ MAX_ADDITIONAL_CONNECTION_FAILED_COUNTER ;
 int SessionAdditionalConnect (TYPE_3__*) ;
 scalar_t__ Tick64 () ;

void ClientAdditionalConnectChance(SESSION *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 if (s->ServerMode)
 {

  return;
 }
 if (s->Connection->Protocol != CONNECTION_TCP)
 {

  return;
 }
 if (s->IsRUDPSession && s->EnableUdpRecovery == 0)
 {

  return;
 }

 if (s->IsRUDPSession && (s->Connection->AdditionalConnectionFailedCounter > MAX_ADDITIONAL_CONNECTION_FAILED_COUNTER))
 {

  return;
 }

 while (1)
 {
  if (s->Halt)
  {
   return;
  }


  if (Count(s->Connection->CurrentNumConnection) < s->MaxConnection)
  {

   UINT64 now = Tick64();



   if (s->NextConnectionTime == 0 ||
    s->ClientOption->AdditionalConnectionInterval == 0 ||
    (s->NextConnectionTime <= now))
   {

    s->NextConnectionTime = now + s->ClientOption->AdditionalConnectionInterval * (UINT64)1000U;
    SessionAdditionalConnect(s);
   }
   else
   {
    break;
   }
  }
  else
  {
   break;
  }
 }
}

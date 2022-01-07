
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int spl_t ;
typedef int kern_return_t ;
typedef TYPE_1__* alarm_t ;
struct TYPE_4__ {scalar_t__ al_status; scalar_t__ al_port; struct TYPE_4__* al_next; int al_time; int al_type; int al_port_type; struct TYPE_4__* al_prev; } ;


 scalar_t__ ALARM_DONE ;
 scalar_t__ ALARM_FREE ;
 scalar_t__ IP_NULL ;
 scalar_t__ IP_VALID (scalar_t__) ;
 int KERN_ABORTED ;
 int KERN_SUCCESS ;
 int LOCK_ALARM (int ) ;
 int UNLOCK_ALARM (int ) ;
 TYPE_1__* alrmdone ;
 TYPE_1__* alrmfree ;
 int clock_alarm_reply (scalar_t__,int ,int ,int ,int ) ;
 int panic (char*) ;

__attribute__((used)) static void
alarm_done(void)
{
 alarm_t alrm;
 kern_return_t code;
 spl_t s;

 LOCK_ALARM(s);
 while ((alrm = alrmdone) != ((void*)0)) {
  if ((alrmdone = alrm->al_next) != ((void*)0))
   alrmdone->al_prev = (alarm_t)&alrmdone;
  UNLOCK_ALARM(s);

  code = (alrm->al_status == ALARM_DONE? KERN_SUCCESS: KERN_ABORTED);
  if (alrm->al_port != IP_NULL) {

   if (IP_VALID(alrm->al_port)) {
    clock_alarm_reply(alrm->al_port, alrm->al_port_type, code,
              alrm->al_type, alrm->al_time);
   }

   LOCK_ALARM(s);
   alrm->al_status = ALARM_FREE;
   alrm->al_next = alrmfree;
   alrmfree = alrm;
  }
  else
   panic("clock_alarm_deliver");
 }

 UNLOCK_ALARM(s);
}

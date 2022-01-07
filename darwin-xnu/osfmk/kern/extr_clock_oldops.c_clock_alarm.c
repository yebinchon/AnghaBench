
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int spl_t ;
typedef int mach_timespec_t ;
typedef int mach_msg_type_name_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;
typedef TYPE_2__* clock_t ;
typedef int alarm_type_t ;
typedef TYPE_3__* alarm_t ;
struct TYPE_11__ {scalar_t__ al_seqno; TYPE_2__* al_clock; int al_port_type; int al_port; int al_type; int al_time; int al_status; struct TYPE_11__* al_next; } ;
struct TYPE_10__ {TYPE_1__* cl_ops; } ;
struct TYPE_9__ {int (* c_gettime ) (int *) ;} ;


 int ALARM_CLOCK ;
 TYPE_2__* CLOCK_NULL ;
 scalar_t__ IP_VALID (int ) ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_INVALID_CAPABILITY ;
 int KERN_INVALID_VALUE ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int LOCK_ALARM (int ) ;
 size_t SYSTEM_CLOCK ;
 int UNLOCK_ALARM (int ) ;
 int alarm_zone ;
 int alrm_seqno ;
 TYPE_3__* alrmfree ;
 int check_time (int ,int *,int *) ;
 int clock_alarm_reply (int ,int ,int ,int ,int ) ;
 TYPE_2__* clock_list ;
 int post_alarm (TYPE_3__*) ;
 int stub1 (int *) ;
 scalar_t__ zalloc (int ) ;

kern_return_t
clock_alarm(
 clock_t clock,
 alarm_type_t alarm_type,
 mach_timespec_t alarm_time,
 ipc_port_t alarm_port,
 mach_msg_type_name_t alarm_port_type)
{
 alarm_t alarm;
 mach_timespec_t clock_time;
 int chkstat;
 kern_return_t reply_code;
 spl_t s;

 if (clock == CLOCK_NULL)
  return (KERN_INVALID_ARGUMENT);
 if (clock != &clock_list[SYSTEM_CLOCK])
  return (KERN_FAILURE);
 if (IP_VALID(alarm_port) == 0)
  return (KERN_INVALID_CAPABILITY);





 (*clock->cl_ops->c_gettime)(&clock_time);
 chkstat = check_time(alarm_type, &alarm_time, &clock_time);
 if (chkstat <= 0) {
  reply_code = (chkstat < 0 ? KERN_INVALID_VALUE : KERN_SUCCESS);
  clock_alarm_reply(alarm_port, alarm_port_type,
      reply_code, alarm_type, clock_time);
  return (KERN_SUCCESS);
 }





 LOCK_ALARM(s);
 if ((alarm = alrmfree) == 0) {
  UNLOCK_ALARM(s);
  alarm = (alarm_t) zalloc(alarm_zone);
  if (alarm == 0)
   return (KERN_RESOURCE_SHORTAGE);
  LOCK_ALARM(s);
 }
 else
  alrmfree = alarm->al_next;

 alarm->al_status = ALARM_CLOCK;
 alarm->al_time = alarm_time;
 alarm->al_type = alarm_type;
 alarm->al_port = alarm_port;
 alarm->al_port_type = alarm_port_type;
 alarm->al_clock = clock;
 alarm->al_seqno = alrm_seqno++;
 post_alarm(alarm);
 UNLOCK_ALARM(s);

 return (KERN_SUCCESS);
}

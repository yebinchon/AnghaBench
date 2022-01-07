
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int msg ;
struct TYPE_2__ {int Head; } ;
typedef TYPE_1__ __Request__host_calendar_set_t ;


 int HOST_NOTIFY_CALENDAR_SET ;
 int host_notify_all (int ,int *,int) ;

void
host_notify_calendar_set(void)
{
 __Request__host_calendar_set_t msg;

 host_notify_all(HOST_NOTIFY_CALENDAR_SET, &msg.Head, sizeof (msg));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ipc_kobject_t ;
typedef TYPE_1__* clock_t ;
struct TYPE_3__ {int cl_control; int cl_service; } ;


 int IKOT_CLOCK ;
 int IKOT_CLOCK_CTRL ;
 int ipc_kobject_set (int ,int ,int ) ;

void
ipc_clock_enable(
 clock_t clock)
{
 ipc_kobject_set(clock->cl_service,
   (ipc_kobject_t) clock, IKOT_CLOCK);
 ipc_kobject_set(clock->cl_control,
   (ipc_kobject_t) clock, IKOT_CLOCK_CTRL);
}

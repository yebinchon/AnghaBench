
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
typedef int ipc_port_t ;
typedef int ipc_kobject_t ;
struct TYPE_3__ {int processor_self; } ;


 int IKOT_PROCESSOR ;
 int ipc_kobject_set (int ,int ,int ) ;

void
ipc_processor_enable(
 processor_t processor)
{
 ipc_port_t myport;

 myport = processor->processor_self;
 ipc_kobject_set(myport, (ipc_kobject_t) processor, IKOT_PROCESSOR);
}

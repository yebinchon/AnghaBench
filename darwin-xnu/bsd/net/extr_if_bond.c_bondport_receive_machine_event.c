
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* bondport_ref ;
struct TYPE_9__ {int po_receive_state; } ;
typedef int LAEvent ;


 int LAEventStart ;







 int bondport_receive_machine_current (TYPE_1__*,int ,void*) ;
 int bondport_receive_machine_defaulted (TYPE_1__*,int ,void*) ;
 int bondport_receive_machine_expired (TYPE_1__*,int ,void*) ;
 int bondport_receive_machine_initialize (TYPE_1__*,int ,void*) ;
 int bondport_receive_machine_lacp_disabled (TYPE_1__*,int ,void*) ;
 int bondport_receive_machine_port_disabled (TYPE_1__*,int ,void*) ;

__attribute__((used)) static void
bondport_receive_machine_event(bondport_ref p, LAEvent event,
          void * event_data)
{
    switch (p->po_receive_state) {
    case 128:
 bondport_receive_machine_initialize(p, LAEventStart, ((void*)0));
 break;
    case 131:
 bondport_receive_machine_initialize(p, event, event_data);
 break;
    case 129:
 bondport_receive_machine_port_disabled(p, event, event_data);
 break;
    case 132:
 bondport_receive_machine_expired(p, event, event_data);
 break;
    case 130:
 bondport_receive_machine_lacp_disabled(p, event, event_data);
 break;
    case 133:
 bondport_receive_machine_defaulted(p, event, event_data);
 break;
    case 134:
 bondport_receive_machine_current(p, event, event_data);
 break;
    default:
 break;
    }
    return;
}

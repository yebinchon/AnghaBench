
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* bondport_ref ;
struct TYPE_7__ {int po_mux_state; } ;
typedef int LAEvent ;


 int LAEventStart ;





 int bondport_mux_machine_attached (TYPE_1__*,int ,void*) ;
 int bondport_mux_machine_collecting_distributing (TYPE_1__*,int ,void*) ;
 int bondport_mux_machine_detached (TYPE_1__*,int ,void*) ;
 int bondport_mux_machine_waiting (TYPE_1__*,int ,void*) ;

__attribute__((used)) static void
bondport_mux_machine(bondport_ref p, LAEvent event, void * event_data)
{
    switch (p->po_mux_state) {
    case 128:
 bondport_mux_machine_detached(p, LAEventStart, ((void*)0));
 break;
    case 130:
 bondport_mux_machine_detached(p, event, event_data);
 break;
    case 129:
 bondport_mux_machine_waiting(p, event, event_data);
 break;
    case 132:
 bondport_mux_machine_attached(p, event, event_data);
 break;
    case 131:
 bondport_mux_machine_collecting_distributing(p, event, event_data);
 break;
    default:
 break;
    }
    return;
}

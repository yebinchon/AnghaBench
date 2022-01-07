
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* bondport_ref ;
struct TYPE_6__ {int po_receive_state; int po_media_info; } ;
typedef int LAEvent ;




 int const LAEventStart ;


 int bondport_receive_machine_current (TYPE_1__*,int,void*) ;
 int bondport_receive_machine_event (TYPE_1__*,int,void*) ;
 int bondport_receive_machine_port_disabled (TYPE_1__*,int const,int *) ;
 int media_active (int *) ;

__attribute__((used)) static void
bondport_receive_machine(bondport_ref p, LAEvent event,
    void * event_data)
{
    switch (event) {
    case 130:
 if (p->po_receive_state != 129) {
     bondport_receive_machine_current(p, event, event_data);
 }
 break;
    case 131:
 if (media_active(&p->po_media_info)) {
     switch (p->po_receive_state) {
     case 128:
     case 129:
  bondport_receive_machine_port_disabled(p, 131, ((void*)0));
  break;
     default:
  break;
     }
 }
 else {
     bondport_receive_machine_port_disabled(p, LAEventStart, ((void*)0));
 }
 break;
    default:
 bondport_receive_machine_event(p, event, event_data);
 break;
    }
    return;
}

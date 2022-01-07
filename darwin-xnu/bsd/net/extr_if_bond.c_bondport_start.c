
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bondport_ref ;


 int LAEventStart ;
 int bondport_mux_machine (int ,int ,int *) ;
 int bondport_periodic_transmit_machine (int ,int ,int *) ;
 int bondport_receive_machine (int ,int ,int *) ;
 int bondport_transmit_machine (int ,int ,int *) ;

__attribute__((used)) static void
bondport_start(bondport_ref p)
{
    bondport_receive_machine(p, LAEventStart, ((void*)0));
    bondport_mux_machine(p, LAEventStart, ((void*)0));
    bondport_periodic_transmit_machine(p, LAEventStart, ((void*)0));
    bondport_transmit_machine(p, LAEventStart, ((void*)0));
    return;
}

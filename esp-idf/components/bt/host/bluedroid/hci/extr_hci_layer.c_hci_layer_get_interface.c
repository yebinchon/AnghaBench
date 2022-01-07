
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hci_t ;


 int hal ;
 int hci_hal_h4_get_interface () ;
 int init_layer_interface () ;
 int const interface ;
 int packet_fragmenter ;
 int packet_fragmenter_get_interface () ;

const hci_t *hci_layer_get_interface(void)
{
    hal = hci_hal_h4_get_interface();
    packet_fragmenter = packet_fragmenter_get_interface();

    init_layer_interface();
    return &interface;
}

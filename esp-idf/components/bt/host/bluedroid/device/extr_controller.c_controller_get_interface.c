
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int controller_t ;
typedef int controller_local_param_t ;
struct TYPE_2__ {int packet_parser; int packet_factory; int hci; } ;


 int assert (int *) ;
 TYPE_1__ controller_param ;
 int * controller_param_ptr ;
 int hci_layer_get_interface () ;
 int hci_packet_factory_get_interface () ;
 int hci_packet_parser_get_interface () ;
 int const interface ;
 scalar_t__ osi_calloc (int) ;

const controller_t *controller_get_interface(void)
{
    static bool loaded = 0;
    if (!loaded) {
        loaded = 1;

        controller_param_ptr = (controller_local_param_t *)osi_calloc(sizeof(controller_local_param_t));
        assert(controller_param_ptr);

        controller_param.hci = hci_layer_get_interface();
        controller_param.packet_factory = hci_packet_factory_get_interface();
        controller_param.packet_parser = hci_packet_parser_get_interface();
    }

    return &interface;
}

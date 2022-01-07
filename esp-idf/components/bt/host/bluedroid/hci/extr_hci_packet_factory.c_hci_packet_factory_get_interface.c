
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hci_packet_factory_t ;


 int const interface ;

const hci_packet_factory_t *hci_packet_factory_get_interface(void)
{
    return &interface;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int packet_fragmenter_t ;


 int controller ;
 int controller_get_interface () ;
 int const interface ;

const packet_fragmenter_t *packet_fragmenter_get_interface(void)
{
    controller = controller_get_interface();
    return &interface;
}

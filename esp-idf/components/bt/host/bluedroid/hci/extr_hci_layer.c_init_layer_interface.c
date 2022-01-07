
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int transmit_downward; int transmit_command_futured; int transmit_command; } ;


 TYPE_1__ interface ;
 int interface_created ;
 int transmit_command ;
 int transmit_command_futured ;
 int transmit_downward ;

__attribute__((used)) static void init_layer_interface(void)
{
    if (!interface_created) {
        interface.transmit_command = transmit_command;
        interface.transmit_command_futured = transmit_command_futured;
        interface.transmit_downward = transmit_downward;
        interface_created = 1;
    }
}

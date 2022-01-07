
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int packet_id_is_reset; } ;
typedef TYPE_1__ network_socket ;


 int TRUE ;

int network_mysqld_queue_reset(network_socket *sock) {
 sock->packet_id_is_reset = TRUE;

 return 0;
}

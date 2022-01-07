
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int errmsg; int sqlstate; } ;
typedef TYPE_1__ network_mysqld_err_packet_t ;


 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_string_free (int ,int ) ;

void network_mysqld_err_packet_free(network_mysqld_err_packet_t *err_packet) {
 if (!err_packet) return;

 g_string_free(err_packet->sqlstate, TRUE);
 g_string_free(err_packet->errmsg, TRUE);

 g_free(err_packet);
}

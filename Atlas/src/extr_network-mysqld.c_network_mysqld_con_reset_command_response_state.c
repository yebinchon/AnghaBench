
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int command; int (* data_free ) (int *) ;int * data; } ;
struct TYPE_5__ {TYPE_1__ parse; } ;
typedef TYPE_2__ network_mysqld_con ;


 int stub1 (int *) ;

void network_mysqld_con_reset_command_response_state(network_mysqld_con *con) {
 con->parse.command = -1;
 if (con->parse.data && con->parse.data_free) {
  con->parse.data_free(con->parse.data);

  con->parse.data = ((void*)0);
  con->parse.data_free = ((void*)0);
 }
}

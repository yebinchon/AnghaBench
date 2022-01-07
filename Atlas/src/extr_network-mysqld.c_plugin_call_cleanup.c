
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int network_socket_retval_t ;
struct TYPE_6__ {int (* con_cleanup ) (int *,TYPE_2__*) ;} ;
struct TYPE_7__ {TYPE_1__ plugins; } ;
typedef TYPE_2__ network_mysqld_con ;
typedef int chassis ;
typedef int (* NETWORK_MYSQLD_PLUGIN_FUNC ) (int *,TYPE_2__*) ;


 int NETWORK_SOCKET_SUCCESS ;
 int stub1 (int *,TYPE_2__*) ;

network_socket_retval_t plugin_call_cleanup(chassis *srv, network_mysqld_con *con) {
 NETWORK_MYSQLD_PLUGIN_FUNC(func) = ((void*)0);
 network_socket_retval_t retval = NETWORK_SOCKET_SUCCESS;

 func = con->plugins.con_cleanup;

 if (!func) return retval;


 retval = (*func)(srv, con);


 return retval;
}

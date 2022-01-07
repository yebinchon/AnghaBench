
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_com_query_result_t ;
typedef int gboolean ;


 int network_mysqld_com_query_result_is_local_infile (int *) ;

gboolean network_mysqld_com_query_result_is_load_data(network_mysqld_com_query_result_t *udata) {
 return network_mysqld_com_query_result_is_local_infile(udata);
}

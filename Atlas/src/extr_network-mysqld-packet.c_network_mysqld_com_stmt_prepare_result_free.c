
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_com_stmt_prepare_result_t ;


 int g_free (int *) ;

void network_mysqld_com_stmt_prepare_result_free(network_mysqld_com_stmt_prepare_result_t *udata) {
 if (!udata) return;

 g_free(udata);
}

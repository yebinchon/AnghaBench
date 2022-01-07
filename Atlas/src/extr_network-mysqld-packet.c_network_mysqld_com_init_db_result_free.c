
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ db_name; } ;
typedef TYPE_1__ network_mysqld_com_init_db_result_t ;


 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_string_free (scalar_t__,int ) ;

void network_mysqld_com_init_db_result_free(network_mysqld_com_init_db_result_t *udata) {
 if (udata->db_name) g_string_free(udata->db_name, TRUE);

 g_free(udata);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ network_mysqld_com_query_result_t ;
typedef int gboolean ;


 int FALSE ;
 scalar_t__ PARSE_COM_QUERY_LOCAL_INFILE_DATA ;
 int TRUE ;

gboolean network_mysqld_com_query_result_is_local_infile(network_mysqld_com_query_result_t *udata) {
 return (udata->state == PARSE_COM_QUERY_LOCAL_INFILE_DATA) ? TRUE : FALSE;
}

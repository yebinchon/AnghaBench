
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fields; } ;
typedef TYPE_1__ proxy_resultset_t ;


 int g_free (TYPE_1__*) ;
 int network_mysqld_proto_fielddefs_free (scalar_t__) ;

void proxy_resultset_free(proxy_resultset_t *res) {
 if (!res) return;

 if (res->fields) {
  network_mysqld_proto_fielddefs_free(res->fields);
 }

 g_free(res);
}

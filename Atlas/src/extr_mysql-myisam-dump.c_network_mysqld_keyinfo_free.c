
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; TYPE_3__* parts; } ;
typedef TYPE_1__ network_mysqld_keyinfo ;
typedef size_t guint ;
struct TYPE_6__ {size_t len; int * pdata; } ;


 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_ptr_array_free (TYPE_3__*,int ) ;
 int g_string_free (int ,int ) ;
 int network_mysqld_keypart_free (int ) ;

void network_mysqld_keyinfo_free(network_mysqld_keyinfo *keyinfo) {
 guint i;

 if (!keyinfo) return;

 for (i = 0; i < keyinfo->parts->len; i++) {
  network_mysqld_keypart_free(keyinfo->parts->pdata[i]);
 }
 g_ptr_array_free(keyinfo->parts, TRUE);
 g_string_free(keyinfo->name, TRUE);

 g_free(keyinfo);
}

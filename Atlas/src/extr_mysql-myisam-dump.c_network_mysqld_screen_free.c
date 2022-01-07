
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* fields; } ;
typedef TYPE_1__ network_mysqld_screen ;
typedef size_t guint ;
struct TYPE_6__ {size_t len; int * pdata; } ;


 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_ptr_array_free (TYPE_3__*,int ) ;
 int network_mysqld_screen_field_free (int ) ;

void network_mysqld_screen_free(network_mysqld_screen *screen) {
 guint i;
 if (!screen) return;

 for (i = 0; i < screen->fields->len; i++) {
  network_mysqld_screen_field_free(screen->fields->pdata[i]);
 }
 g_ptr_array_free(screen->fields, TRUE);

 g_free(screen);
}

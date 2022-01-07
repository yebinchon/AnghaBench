
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int field_name; } ;
typedef TYPE_1__ network_mysqld_screen_field ;


 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_string_free (int ,int ) ;

void network_mysqld_screen_field_free(network_mysqld_screen_field *screen_field) {
 if (!screen_field) return;

 g_string_free(screen_field->field_name, TRUE);

 g_free(screen_field);
}

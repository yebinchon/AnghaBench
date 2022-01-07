
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int comment; int name; } ;
typedef TYPE_1__ network_mysqld_column_def ;


 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_string_free (int ,int ) ;

void network_mysqld_column_def_free(network_mysqld_column_def *column_def) {
 if (!column_def) return;

 g_string_free(column_def->name, TRUE);
 g_string_free(column_def->comment, TRUE);

 g_free(column_def);
}

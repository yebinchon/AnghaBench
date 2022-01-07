
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int network_mysqld_type_t ;
struct TYPE_5__ {scalar_t__ len; } ;
typedef TYPE_1__ network_mysqld_resultset_row_t ;
typedef scalar_t__ guint ;


 int TRUE ;
 int g_ptr_array_free (TYPE_1__*,int ) ;
 int * g_ptr_array_index (TYPE_1__*,scalar_t__) ;
 int network_mysqld_type_free (int *) ;

void network_mysqld_resultset_row_free(network_mysqld_resultset_row_t *row) {
 guint i;

 if (((void*)0) == row) return;

 for (i = 0; i < row->len; i++) {
  network_mysqld_type_t *field = g_ptr_array_index(row, i);

  network_mysqld_type_free(field);
 }

 g_ptr_array_free(row, TRUE);
}

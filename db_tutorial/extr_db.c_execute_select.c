
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Table ;
struct TYPE_6__ {int end_of_table; } ;
typedef int Statement ;
typedef int Row ;
typedef int ExecuteResult ;
typedef TYPE_1__ Cursor ;


 int EXECUTE_SUCCESS ;
 int cursor_advance (TYPE_1__*) ;
 int cursor_value (TYPE_1__*) ;
 int deserialize_row (int ,int *) ;
 int free (TYPE_1__*) ;
 int print_row (int *) ;
 TYPE_1__* table_start (int *) ;

ExecuteResult execute_select(Statement* statement, Table* table) {
  Cursor* cursor = table_start(table);

  Row row;
  while (!(cursor->end_of_table)) {
    deserialize_row(cursor_value(cursor), &row);
    print_row(&row);
    cursor_advance(cursor);
  }

  free(cursor);

  return EXECUTE_SUCCESS;
}

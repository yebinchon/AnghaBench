
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_12__ {int pager; } ;
typedef TYPE_1__ Table ;
struct TYPE_15__ {scalar_t__ cell_num; int page_num; } ;
struct TYPE_14__ {scalar_t__ id; } ;
struct TYPE_13__ {TYPE_3__ row_to_insert; } ;
typedef TYPE_2__ Statement ;
typedef TYPE_3__ Row ;
typedef int ExecuteResult ;
typedef TYPE_4__ Cursor ;


 int EXECUTE_DUPLICATE_KEY ;
 int EXECUTE_SUCCESS ;
 int free (TYPE_4__*) ;
 void* get_page (int ,int ) ;
 int leaf_node_insert (TYPE_4__*,scalar_t__,TYPE_3__*) ;
 scalar_t__* leaf_node_key (void*,scalar_t__) ;
 scalar_t__* leaf_node_num_cells (void*) ;
 TYPE_4__* table_find (TYPE_1__*,scalar_t__) ;

ExecuteResult execute_insert(Statement* statement, Table* table) {
  Row* row_to_insert = &(statement->row_to_insert);
  uint32_t key_to_insert = row_to_insert->id;
  Cursor* cursor = table_find(table, key_to_insert);

  void* node = get_page(table->pager, cursor->page_num);
  uint32_t num_cells = *leaf_node_num_cells(node);

  if (cursor->cell_num < num_cells) {
    uint32_t key_at_index = *leaf_node_key(node, cursor->cell_num);
    if (key_at_index == key_to_insert) {
      return EXECUTE_DUPLICATE_KEY;
    }
  }

  leaf_node_insert(cursor, row_to_insert->id, row_to_insert);

  free(cursor);

  return EXECUTE_SUCCESS;
}

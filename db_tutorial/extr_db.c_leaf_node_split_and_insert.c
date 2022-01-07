
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_6__ {int pager; } ;
struct TYPE_5__ {int page_num; int cell_num; TYPE_3__* table; } ;
typedef int Row ;
typedef TYPE_1__ Cursor ;


 int LEAF_NODE_CELL_SIZE ;
 int LEAF_NODE_LEFT_SPLIT_COUNT ;
 int LEAF_NODE_MAX_CELLS ;
 int LEAF_NODE_RIGHT_SPLIT_COUNT ;
 void create_new_root (TYPE_3__*,int) ;
 int get_node_max_key (void*) ;
 void* get_page (int ,int) ;
 int get_unused_page_num (int ) ;
 int initialize_leaf_node (void*) ;
 int internal_node_insert (TYPE_3__*,int,int) ;
 scalar_t__ is_node_root (void*) ;
 void* leaf_node_cell (void*,int) ;
 int* leaf_node_key (void*,int) ;
 int* leaf_node_next_leaf (void*) ;
 int* leaf_node_num_cells (void*) ;
 int leaf_node_value (void*,int) ;
 int memcpy (void*,void*,int ) ;
 int* node_parent (void*) ;
 int serialize_row (int *,int ) ;
 int update_internal_node_key (void*,int,int) ;

void leaf_node_split_and_insert(Cursor* cursor, uint32_t key, Row* value) {






  void* old_node = get_page(cursor->table->pager, cursor->page_num);
  uint32_t old_max = get_node_max_key(old_node);
  uint32_t new_page_num = get_unused_page_num(cursor->table->pager);
  void* new_node = get_page(cursor->table->pager, new_page_num);
  initialize_leaf_node(new_node);
  *node_parent(new_node) = *node_parent(old_node);
  *leaf_node_next_leaf(new_node) = *leaf_node_next_leaf(old_node);
  *leaf_node_next_leaf(old_node) = new_page_num;






  for (int32_t i = LEAF_NODE_MAX_CELLS; i >= 0; i--) {
    void* destination_node;
    if (i >= LEAF_NODE_LEFT_SPLIT_COUNT) {
      destination_node = new_node;
    } else {
      destination_node = old_node;
    }
    uint32_t index_within_node = i % LEAF_NODE_LEFT_SPLIT_COUNT;
    void* destination = leaf_node_cell(destination_node, index_within_node);

    if (i == cursor->cell_num) {
      serialize_row(value,
                    leaf_node_value(destination_node, index_within_node));
      *leaf_node_key(destination_node, index_within_node) = key;
    } else if (i > cursor->cell_num) {
      memcpy(destination, leaf_node_cell(old_node, i - 1), LEAF_NODE_CELL_SIZE);
    } else {
      memcpy(destination, leaf_node_cell(old_node, i), LEAF_NODE_CELL_SIZE);
    }
  }


  *(leaf_node_num_cells(old_node)) = LEAF_NODE_LEFT_SPLIT_COUNT;
  *(leaf_node_num_cells(new_node)) = LEAF_NODE_RIGHT_SPLIT_COUNT;

  if (is_node_root(old_node)) {
    return create_new_root(cursor->table, new_page_num);
  } else {
    uint32_t parent_page_num = *node_parent(old_node);
    uint32_t new_max = get_node_max_key(old_node);
    void* parent = get_page(cursor->table->pager, parent_page_num);

    update_internal_node_key(parent, old_max, new_max);
    internal_node_insert(cursor->table, parent_page_num, new_page_num);
    return;
  }
}

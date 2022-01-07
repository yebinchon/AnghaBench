
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int pager; } ;
typedef TYPE_1__ Table ;


 int EXIT_FAILURE ;
 int INTERNAL_NODE_CELL_SIZE ;
 scalar_t__ INTERNAL_NODE_MAX_CELLS ;
 int exit (int ) ;
 scalar_t__ get_node_max_key (void*) ;
 void* get_page (int ,scalar_t__) ;
 void* internal_node_cell (void*,scalar_t__) ;
 scalar_t__* internal_node_child (void*,scalar_t__) ;
 scalar_t__ internal_node_find_child (void*,scalar_t__) ;
 scalar_t__* internal_node_key (void*,scalar_t__) ;
 scalar_t__* internal_node_num_keys (void*) ;
 scalar_t__* internal_node_right_child (void*) ;
 int memcpy (void*,void*,int ) ;
 int printf (char*) ;

void internal_node_insert(Table* table, uint32_t parent_page_num,
                          uint32_t child_page_num) {




  void* parent = get_page(table->pager, parent_page_num);
  void* child = get_page(table->pager, child_page_num);
  uint32_t child_max_key = get_node_max_key(child);
  uint32_t index = internal_node_find_child(parent, child_max_key);

  uint32_t original_num_keys = *internal_node_num_keys(parent);
  *internal_node_num_keys(parent) = original_num_keys + 1;

  if (original_num_keys >= INTERNAL_NODE_MAX_CELLS) {
    printf("Need to implement splitting internal node\n");
    exit(EXIT_FAILURE);
  }

  uint32_t right_child_page_num = *internal_node_right_child(parent);
  void* right_child = get_page(table->pager, right_child_page_num);

  if (child_max_key > get_node_max_key(right_child)) {

    *internal_node_child(parent, original_num_keys) = right_child_page_num;
    *internal_node_key(parent, original_num_keys) =
        get_node_max_key(right_child);
    *internal_node_right_child(parent) = child_page_num;
  } else {

    for (uint32_t i = original_num_keys; i > index; i--) {
      void* destination = internal_node_cell(parent, i);
      void* source = internal_node_cell(parent, i - 1);
      memcpy(destination, source, INTERNAL_NODE_CELL_SIZE);
    }
    *internal_node_child(parent, index) = child_page_num;
    *internal_node_key(parent, index) = child_max_key;
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int pager; } ;
typedef TYPE_1__ Table ;
typedef int Cursor ;




 int get_node_type (void*) ;
 void* get_page (int ,int ) ;
 int * internal_node_child (void*,int ) ;
 int internal_node_find_child (void*,int ) ;
 int * leaf_node_find (TYPE_1__*,int ,int ) ;

Cursor* internal_node_find(Table* table, uint32_t page_num, uint32_t key) {
  void* node = get_page(table->pager, page_num);

  uint32_t child_index = internal_node_find_child(node, key);
  uint32_t child_num = *internal_node_child(node, child_index);
  void* child = get_page(table->pager, child_num);
  switch (get_node_type(child)) {
    case 128:
      return leaf_node_find(table, child_num, key);
    case 129:
      return internal_node_find(table, child_num, key);
  }
}

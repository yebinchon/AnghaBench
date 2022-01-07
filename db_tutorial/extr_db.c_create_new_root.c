
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {void* root_page_num; int pager; } ;
typedef TYPE_1__ Table ;


 int PAGE_SIZE ;
 void* get_node_max_key (void*) ;
 void* get_page (int ,void*) ;
 void* get_unused_page_num (int ) ;
 int initialize_internal_node (void*) ;
 void** internal_node_child (void*,int ) ;
 void** internal_node_key (void*,int ) ;
 int* internal_node_num_keys (void*) ;
 void** internal_node_right_child (void*) ;
 int memcpy (void*,void*,int ) ;
 void** node_parent (void*) ;
 int set_node_root (void*,int) ;

void create_new_root(Table* table, uint32_t right_child_page_num) {
  void* root = get_page(table->pager, table->root_page_num);
  void* right_child = get_page(table->pager, right_child_page_num);
  uint32_t left_child_page_num = get_unused_page_num(table->pager);
  void* left_child = get_page(table->pager, left_child_page_num);


  memcpy(left_child, root, PAGE_SIZE);
  set_node_root(left_child, 0);


  initialize_internal_node(root);
  set_node_root(root, 1);
  *internal_node_num_keys(root) = 1;
  *internal_node_child(root, 0) = left_child_page_num;
  uint32_t left_child_max_key = get_node_max_key(left_child);
  *internal_node_key(root, 0) = left_child_max_key;
  *internal_node_right_child(root) = right_child_page_num;
  *node_parent(left_child) = table->root_page_num;
  *node_parent(right_child) = table->root_page_num;
}

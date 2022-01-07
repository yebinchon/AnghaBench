
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int pager; int root_page_num; } ;
typedef TYPE_1__ Table ;
typedef int Cursor ;


 scalar_t__ NODE_LEAF ;
 scalar_t__ get_node_type (void*) ;
 void* get_page (int ,int ) ;
 int * internal_node_find (TYPE_1__*,int ,int ) ;
 int * leaf_node_find (TYPE_1__*,int ,int ) ;

Cursor* table_find(Table* table, uint32_t key) {
  uint32_t root_page_num = table->root_page_num;
  void* root_node = get_page(table->pager, root_page_num);

  if (get_node_type(root_node) == NODE_LEAF) {
    return leaf_node_find(table, root_page_num, key);
  } else {
    return internal_node_find(table, root_page_num, key);
  }
}

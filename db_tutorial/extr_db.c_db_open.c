
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ root_page_num; TYPE_2__* pager; } ;
typedef TYPE_1__ Table ;
struct TYPE_8__ {scalar_t__ num_pages; } ;
typedef TYPE_2__ Pager ;


 void* get_page (TYPE_2__*,int ) ;
 int initialize_leaf_node (void*) ;
 TYPE_1__* malloc (int) ;
 TYPE_2__* pager_open (char const*) ;
 int set_node_root (void*,int) ;

Table* db_open(const char* filename) {
  Pager* pager = pager_open(filename);

  Table* table = malloc(sizeof(Table));
  table->pager = pager;
  table->root_page_num = 0;

  if (pager->num_pages == 0) {

    void* root_node = get_page(pager, 0);
    initialize_leaf_node(root_node);
    set_node_root(root_node, 1);
  }

  return table;
}

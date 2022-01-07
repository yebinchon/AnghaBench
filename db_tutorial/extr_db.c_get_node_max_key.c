
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;




 int get_node_type (void*) ;
 int * internal_node_key (void*,int ) ;
 int * internal_node_num_keys (void*) ;
 int * leaf_node_key (void*,int ) ;
 int * leaf_node_num_cells (void*) ;

uint32_t get_node_max_key(void* node) {
  switch (get_node_type(node)) {
    case 129:
      return *internal_node_key(node, *internal_node_num_keys(node) - 1);
    case 128:
      return *leaf_node_key(node, *leaf_node_num_cells(node) - 1);
  }
}

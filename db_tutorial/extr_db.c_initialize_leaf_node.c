
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NODE_LEAF ;
 scalar_t__* leaf_node_next_leaf (void*) ;
 scalar_t__* leaf_node_num_cells (void*) ;
 int set_node_root (void*,int) ;
 int set_node_type (void*,int ) ;

void initialize_leaf_node(void* node) {
  set_node_type(node, NODE_LEAF);
  set_node_root(node, 0);
  *leaf_node_num_cells(node) = 0;
  *leaf_node_next_leaf(node) = 0;
}

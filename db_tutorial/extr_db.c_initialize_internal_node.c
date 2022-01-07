
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NODE_INTERNAL ;
 scalar_t__* internal_node_num_keys (void*) ;
 int set_node_root (void*,int) ;
 int set_node_type (void*,int ) ;

void initialize_internal_node(void* node) {
  set_node_type(node, NODE_INTERNAL);
  set_node_root(node, 0);
  *internal_node_num_keys(node) = 0;
}

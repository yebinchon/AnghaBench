
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 scalar_t__* internal_node_cell (void*,scalar_t__) ;
 scalar_t__* internal_node_num_keys (void*) ;
 scalar_t__* internal_node_right_child (void*) ;
 int printf (char*,scalar_t__,scalar_t__) ;

uint32_t* internal_node_child(void* node, uint32_t child_num) {
  uint32_t num_keys = *internal_node_num_keys(node);
  if (child_num > num_keys) {
    printf("Tried to access child_num %d > num_keys %d\n", child_num, num_keys);
    exit(EXIT_FAILURE);
  } else if (child_num == num_keys) {
    return internal_node_right_child(node);
  } else {
    return internal_node_cell(node, child_num);
  }
}

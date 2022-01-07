
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint32_t ;


 int PARENT_POINTER_OFFSET ;

uint32_t* node_parent(void* node) { return node + PARENT_POINTER_OFFSET; }

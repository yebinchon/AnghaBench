
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int alloc_root (int ) ;
 int construct_with (int ,int ) ;

var new_root_with(var type, var args) {
  return construct_with(alloc_root(type), args);
}

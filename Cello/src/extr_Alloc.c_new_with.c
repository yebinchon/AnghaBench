
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int alloc (int ) ;
 int construct_with (int ,int ) ;

var new_with(var type, var args) {
  return construct_with(alloc(type), args);
}

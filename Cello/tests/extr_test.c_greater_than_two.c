
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * var ;


 int c_int (int *) ;

var greater_than_two(var x) {
  return c_int(x) > 2 ? x : ((void*)0);
}

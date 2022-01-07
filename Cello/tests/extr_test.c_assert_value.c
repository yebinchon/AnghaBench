
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * var ;


 int PT_ASSERT (int *) ;

var assert_value(var x) {
  PT_ASSERT(x);
  return ((void*)0);
}

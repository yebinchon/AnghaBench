
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Iter ;
 int method (int ,int ,int (*) (int ,int ),int ) ;

var iter_next(var self, var curr) {
  return method(self, Iter, iter_next, curr);
}

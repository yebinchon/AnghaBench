
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Type_Instance (int ,int ) ;
 int Type_Of (int ) ;

var instance(var self, var cls) {
  return Type_Instance(Type_Of(self), cls);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Type_Implements (int ,int ) ;
 int Type_Of (int ) ;

bool implements(var self, var cls) {
  return Type_Implements(Type_Of(self), cls);
}

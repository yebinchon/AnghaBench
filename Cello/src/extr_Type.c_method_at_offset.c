
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Type_Method_At_Offset (int ,int ,size_t,char const*) ;
 int Type_Of (int ) ;

var method_at_offset(
  var self, var cls, size_t offset, const char* method_name) {
  return Type_Method_At_Offset(Type_Of(self), cls, offset, method_name);
}

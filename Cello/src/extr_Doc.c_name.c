
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;
struct Doc {char const* (* name ) () ;} ;


 int Doc ;
 char const* c_str (int ) ;
 char const* stub1 () ;
 struct Doc* type_instance (int ,int ) ;

const char* name(var type) {
  struct Doc* doc = type_instance(type, Doc);
  if (doc->name) { return doc->name(); }
  return c_str(type);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Type* var ;
struct Type {int dummy; } ;


 int Type ;
 int Type_Builtin_Name (struct Type*) ;
 struct Type* cast (struct Type*,int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int Type_Cmp(var self, var obj) {
  struct Type* objt = cast(obj, Type);
  return strcmp(Type_Builtin_Name(self), Type_Builtin_Name(objt));
}

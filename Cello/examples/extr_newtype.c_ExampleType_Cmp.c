
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct ExampleType* var ;
struct ExampleType {int value; } ;


 int ExampleType ;
 struct ExampleType* cast (struct ExampleType*,int ) ;

__attribute__((used)) static int ExampleType_Cmp(var self, var obj) {
  struct ExampleType* lhs = self;
  struct ExampleType* rhs = cast(obj, ExampleType);
  return lhs->value - rhs->value;
}

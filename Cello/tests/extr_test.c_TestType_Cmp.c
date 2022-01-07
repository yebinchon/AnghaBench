
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;
struct TestType {scalar_t__ test_data; } ;


 int TestType ;
 struct TestType* cast (int ,int ) ;

__attribute__((used)) static int TestType_Cmp(var self, var obj) {
  struct TestType* lhs = cast(self, TestType);
  struct TestType* rhs = cast(obj, TestType);
  return (int)(lhs->test_data - rhs->test_data);
}

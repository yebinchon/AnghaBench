
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 scalar_t__ Thread_C_Int (int ) ;
 scalar_t__ c_int (int ) ;

__attribute__((used)) static int Thread_Cmp(var self, var obj) {
  return (int)(Thread_C_Int(self) - c_int(obj));
}

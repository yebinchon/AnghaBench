
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int GC_Mem_Ptr (int ,int ) ;

__attribute__((used)) static bool GC_Mem(var self, var key) {
  return GC_Mem_Ptr(self, key);
}

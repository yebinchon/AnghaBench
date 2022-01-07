
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Alloc ;
 int Assign ;
 int C_Float ;
 int C_Int ;
 int C_Str ;
 int Cast ;
 int Cmp ;
 int Concat ;
 int Current ;
 int Get ;
 int Hash ;
 int Iter ;
 int Len ;
 int Mark ;
 int New ;
 int Pointer ;
 int Push ;
 int Size ;
 int Type_Cache_Entry (int,int ) ;
 int Type_Scan (int ,int ) ;

__attribute__((used)) static var Type_Instance(var self, var cls) {
  return Type_Scan(self, cls);
}

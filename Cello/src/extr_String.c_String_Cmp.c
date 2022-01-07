
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int String_C_Str (int ) ;
 int c_str (int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int String_Cmp(var self, var obj) {
  return strcmp(String_C_Str(self), c_str(obj));
}

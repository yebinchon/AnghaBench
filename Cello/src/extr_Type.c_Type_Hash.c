
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;
typedef int uint64_t ;


 char* Type_Builtin_Name (int ) ;
 int hash_data (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static uint64_t Type_Hash(var self) {
  const char* name = Type_Builtin_Name(self);
  return hash_data(name, strlen(name));
}

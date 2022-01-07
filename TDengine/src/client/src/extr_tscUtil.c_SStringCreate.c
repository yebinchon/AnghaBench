
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t n; size_t alloc; int z; } ;
typedef TYPE_1__ SString ;


 int calloc (int,size_t) ;
 int strcpy (int ,char const*) ;
 size_t strlen (char const*) ;

SString SStringCreate(const char* str) {
  size_t len = strlen(str);

  SString dest = {.n = len, .alloc = len + 1};
  dest.z = calloc(1, dest.alloc);
  strcpy(dest.z, str);

  return dest;
}

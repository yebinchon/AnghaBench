
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_key; scalar_t__ key_hash; } ;
typedef TYPE_1__ rcheevos_getvalueud_t ;


 scalar_t__ rcheevos_djb2 (char const*,size_t) ;

__attribute__((used)) static int rcheevos_getvalue_key(void* userdata,
      const char* name, size_t length)
{
   rcheevos_getvalueud_t* ud = (rcheevos_getvalueud_t*)userdata;

   ud->is_key = rcheevos_djb2(name, length) == ud->key_hash;
   return 0;
}

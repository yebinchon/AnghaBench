
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* value; int length; scalar_t__ is_key; } ;
typedef TYPE_1__ rcheevos_getvalueud_t ;



__attribute__((used)) static int rcheevos_getvalue_null(void* userdata)
{
   rcheevos_getvalueud_t* ud = (rcheevos_getvalueud_t*)userdata;

   if (ud->is_key )
   {
      ud->value = "null";
      ud->length = 4;
      ud->is_key = 0;
   }

   return 0;
}

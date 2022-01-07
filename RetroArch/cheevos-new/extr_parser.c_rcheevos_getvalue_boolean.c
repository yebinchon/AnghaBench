
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* value; int length; scalar_t__ is_key; } ;
typedef TYPE_1__ rcheevos_getvalueud_t ;



__attribute__((used)) static int rcheevos_getvalue_boolean(void* userdata, int istrue)
{
   rcheevos_getvalueud_t* ud = (rcheevos_getvalueud_t*)userdata;

   if (ud->is_key)
   {
      if (istrue)
      {
         ud->value = "true";
         ud->length = 4;
      }
      else
      {
         ud->value = "false";
         ud->length = 5;
      }

      ud->is_key = 0;
   }

   return 0;
}

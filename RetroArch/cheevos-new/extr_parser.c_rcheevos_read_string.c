
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* field; } ;
typedef TYPE_2__ rcheevos_readud_t ;
struct TYPE_3__ {char const* string; size_t length; } ;



__attribute__((used)) static int rcheevos_read_string(void* userdata,
      const char* string, size_t length)
{
   rcheevos_readud_t* ud = (rcheevos_readud_t*)userdata;

   if (ud->field)
   {
      ud->field->string = string;
      ud->field->length = length;
   }

   return 0;
}

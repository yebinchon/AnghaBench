
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ is_console_id; TYPE_1__* patchdata; TYPE_2__* field; } ;
typedef TYPE_3__ rcheevos_readud_t ;
struct TYPE_5__ {char const* string; size_t length; } ;
struct TYPE_4__ {unsigned int console_id; } ;


 scalar_t__ strtol (char const*,int *,int) ;

__attribute__((used)) static int rcheevos_read_number(void* userdata,
      const char* number, size_t length)
{
   rcheevos_readud_t* ud = (rcheevos_readud_t*)userdata;

   if (ud->field)
   {
      ud->field->string = number;
      ud->field->length = length;
   }
   else if (ud->is_console_id)
   {
      ud->patchdata->console_id = (unsigned)strtol(number, ((void*)0), 10);
      ud->is_console_id = 0;
   }

   return 0;
}

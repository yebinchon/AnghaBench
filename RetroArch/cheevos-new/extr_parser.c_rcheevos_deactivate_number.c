
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int userdata; int (* unlock_cb ) (unsigned int,int ) ;scalar_t__ is_element; } ;
typedef TYPE_1__ rcheevos_deactivate_t ;


 scalar_t__ strtol (char const*,int *,int) ;
 int stub1 (unsigned int,int ) ;

__attribute__((used)) static int rcheevos_deactivate_number(void* userdata,
      const char* number, size_t length)
{
   rcheevos_deactivate_t* ud = (rcheevos_deactivate_t*)userdata;
   unsigned id = 0;

   if (ud->is_element)
   {
      ud->is_element = 0;
      id = (unsigned)strtol(number, ((void*)0), 10);

      ud->unlock_cb(id, ud->userdata);
   }

   return 0;
}

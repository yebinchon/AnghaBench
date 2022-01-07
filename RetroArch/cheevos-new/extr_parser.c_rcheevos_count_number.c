
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ field_hash; int lboard_count; scalar_t__ in_lboards; int unofficial_count; int core_count; scalar_t__ in_cheevos; } ;
typedef TYPE_1__ rcheevos_countud_t ;


 scalar_t__ CHEEVOS_JSON_KEY_FLAGS ;
 scalar_t__ CHEEVOS_JSON_KEY_ID ;
 long strtol (char const*,int *,int) ;

__attribute__((used)) static int rcheevos_count_number(void* userdata,
      const char* number, size_t length)
{
   rcheevos_countud_t* ud = (rcheevos_countud_t*)userdata;

   if (ud->in_cheevos && ud->field_hash == CHEEVOS_JSON_KEY_FLAGS)
   {
      long flags = strtol(number, ((void*)0), 10);

      if (flags == 3)
         ud->core_count++;
      else if (flags == 5)
         ud->unofficial_count++;
   }
   else if (ud->in_lboards && ud->field_hash == CHEEVOS_JSON_KEY_ID)
      ud->lboard_count++;

   return 0;
}

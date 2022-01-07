
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int beh; scalar_t__ var; scalar_t__ data; scalar_t__ min; scalar_t__ max; } ;
typedef TYPE_1__ menu_entry ;







 int me_toggle_onoff (TYPE_1__*) ;

__attribute__((used)) static int me_process(menu_entry *entry, int is_next, int is_lr)
{
 const char **names;
 int c;
 switch (entry->beh)
 {
  case 129:
  case 132:
   me_toggle_onoff(entry);
   return 1;
  case 128:
  case 131:
   c = is_lr ? 10 : 1;
   *(int *)entry->var += is_next ? c : -c;
   if (*(int *)entry->var < (int)entry->min)
    *(int *)entry->var = (int)entry->max;
   if (*(int *)entry->var > (int)entry->max)
    *(int *)entry->var = (int)entry->min;
   return 1;
  case 130:
   names = (const char **)entry->data;
   for (c = 0; names[c] != ((void*)0); c++)
    ;
   *(signed char *)entry->var += is_next ? 1 : -1;
   if (*(signed char *)entry->var < 0)
    *(signed char *)entry->var = 0;
   if (*(signed char *)entry->var >= c)
    *(signed char *)entry->var = c - 1;
   return 1;
  default:
   return 0;
 }
}

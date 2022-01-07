
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int number; size_t iteminfo; struct TYPE_6__* next; } ;
typedef TYPE_2__ levelitem_t ;
struct TYPE_7__ {TYPE_1__* iteminfo; } ;
struct TYPE_5__ {int name; } ;


 TYPE_4__* itemconfig ;
 TYPE_2__* levelitems ;
 int strcpy (char*,char*) ;
 int strncpy (char*,int ,int) ;

void BotGoalName(int number, char *name, int size)
{
 levelitem_t *li;

 if (!itemconfig) return;

 for (li = levelitems; li; li = li->next)
 {
  if (li->number == number)
  {
   strncpy(name, itemconfig->iteminfo[li->iteminfo].name, size-1);
   name[size-1] = '\0';
   return;
  }
 }
 strcpy(name, "");
 return;
}

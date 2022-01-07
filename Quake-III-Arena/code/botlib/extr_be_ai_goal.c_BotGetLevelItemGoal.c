
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int number; int flags; size_t iteminfo; scalar_t__ timeout; int entitynum; int goalorigin; int goalareanum; struct TYPE_8__* next; } ;
typedef TYPE_2__ levelitem_t ;
struct TYPE_9__ {int number; int flags; int maxs; int mins; int entitynum; int origin; int areanum; } ;
typedef TYPE_3__ bot_goal_t ;
struct TYPE_10__ {TYPE_1__* iteminfo; } ;
struct TYPE_7__ {int maxs; int mins; int name; } ;


 int GFL_DROPPED ;
 int GFL_ITEM ;
 scalar_t__ GT_SINGLE_PLAYER ;
 scalar_t__ GT_TEAM ;
 int IFL_NOTBOT ;
 int IFL_NOTFREE ;
 int IFL_NOTSINGLE ;
 int IFL_NOTTEAM ;
 int Q_stricmp (char*,int ) ;
 int VectorCopy (int ,int ) ;
 scalar_t__ g_gametype ;
 TYPE_5__* itemconfig ;
 TYPE_2__* levelitems ;

int BotGetLevelItemGoal(int index, char *name, bot_goal_t *goal)
{
 levelitem_t *li;

 if (!itemconfig) return -1;
 li = levelitems;
 if (index >= 0)
 {
  for (; li; li = li->next)
  {
   if (li->number == index)
   {
    li = li->next;
    break;
   }
  }
 }
 for (; li; li = li->next)
 {

  if (g_gametype == GT_SINGLE_PLAYER) {
   if (li->flags & IFL_NOTSINGLE) continue;
  }
  else if (g_gametype >= GT_TEAM) {
   if (li->flags & IFL_NOTTEAM) continue;
  }
  else {
   if (li->flags & IFL_NOTFREE) continue;
  }
  if (li->flags & IFL_NOTBOT) continue;

  if (!Q_stricmp(name, itemconfig->iteminfo[li->iteminfo].name))
  {
   goal->areanum = li->goalareanum;
   VectorCopy(li->goalorigin, goal->origin);
   goal->entitynum = li->entitynum;
   VectorCopy(itemconfig->iteminfo[li->iteminfo].mins, goal->mins);
   VectorCopy(itemconfig->iteminfo[li->iteminfo].maxs, goal->maxs);
   goal->number = li->number;
   goal->flags = GFL_ITEM;
   if (li->timeout) goal->flags |= GFL_DROPPED;

   return li->number;
  }
 }
 return -1;
}

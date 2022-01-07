
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
struct TYPE_10__ {scalar_t__ onFocus; TYPE_1__ window; int parent; } ;
typedef TYPE_3__ itemDef_t ;
struct TYPE_9__ {scalar_t__ itemFocusSound; } ;
struct TYPE_11__ {TYPE_2__ Assets; int (* startLocalSound ) (scalar_t__,int ) ;} ;


 int CHAN_LOCAL_SOUND ;
 TYPE_7__* DC ;
 int Item_RunScript (TYPE_3__*,scalar_t__) ;
 int Menu_ClearFocus (int ) ;
 TYPE_3__* Menu_FindItemByName (int ,char const*) ;
 scalar_t__ String_Parse (char**,char const**) ;
 int WINDOW_DECORATION ;
 int WINDOW_HASFOCUS ;
 int stub1 (scalar_t__,int ) ;

void Script_SetFocus(itemDef_t *item, char **args) {
  const char *name;
  itemDef_t *focusItem;

  if (String_Parse(args, &name)) {
    focusItem = Menu_FindItemByName(item->parent, name);
    if (focusItem && !(focusItem->window.flags & WINDOW_DECORATION) && !(focusItem->window.flags & WINDOW_HASFOCUS)) {
      Menu_ClearFocus(item->parent);
      focusItem->window.flags |= WINDOW_HASFOCUS;
      if (focusItem->onFocus) {
        Item_RunScript(focusItem, focusItem->onFocus);
      }
      if (DC->Assets.itemFocusSound) {
        DC->startLocalSound( DC->Assets.itemFocusSound, CHAN_LOCAL_SOUND );
      }
    }
  }
}

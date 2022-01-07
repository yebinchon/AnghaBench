
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {int flags; int rect; } ;
struct TYPE_6__ {scalar_t__ cvar; TYPE_1__ window; } ;
typedef TYPE_2__ itemDef_t ;
struct TYPE_7__ {int (* getCVarValue ) (scalar_t__) ;int (* setCVar ) (scalar_t__,int ) ;int cursory; int cursorx; } ;


 TYPE_4__* DC ;
 int K_ENTER ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int K_MOUSE3 ;
 scalar_t__ Rect_ContainsPoint (int *,int ,int ) ;
 int WINDOW_HASFOCUS ;
 int qfalse ;
 int qtrue ;
 int stub1 (scalar_t__,int ) ;
 int stub2 (scalar_t__) ;
 int va (char*,int) ;

qboolean Item_YesNo_HandleKey(itemDef_t *item, int key) {

  if (Rect_ContainsPoint(&item->window.rect, DC->cursorx, DC->cursory) && item->window.flags & WINDOW_HASFOCUS && item->cvar) {
  if (key == K_MOUSE1 || key == K_ENTER || key == K_MOUSE2 || key == K_MOUSE3) {
     DC->setCVar(item->cvar, va("%i", !DC->getCVarValue(item->cvar)));
    return qtrue;
  }
  }

  return qfalse;

}

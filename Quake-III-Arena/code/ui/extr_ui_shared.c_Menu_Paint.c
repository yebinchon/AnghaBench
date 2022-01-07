
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int* vec4_t ;
typedef scalar_t__ qboolean ;
struct TYPE_6__ {int h; int w; int y; int x; } ;
struct TYPE_8__ {int flags; TYPE_1__ rect; scalar_t__ background; scalar_t__ ownerDrawFlags; } ;
struct TYPE_7__ {int itemCount; TYPE_3__ window; int * items; int fadeCycle; int fadeClamp; int fadeAmount; scalar_t__ fullScreen; } ;
typedef TYPE_2__ menuDef_t ;
struct TYPE_9__ {int (* drawRect ) (int ,int ,int ,int ,int,int*) ;int (* drawHandlePic ) (int ,int ,int ,int ,scalar_t__) ;int (* ownerDrawVisible ) (scalar_t__) ;} ;


 TYPE_5__* DC ;
 int Item_Paint (int ) ;
 int SCREEN_HEIGHT ;
 int SCREEN_WIDTH ;
 int WINDOW_FORCED ;
 int WINDOW_VISIBLE ;
 int Window_Paint (TYPE_3__*,int ,int ,int ) ;
 scalar_t__ debugMode ;
 int stub1 (scalar_t__) ;
 int stub2 (int ,int ,int ,int ,scalar_t__) ;
 int stub3 (int ,int ,int ,int ,int,int*) ;

void Menu_Paint(menuDef_t *menu, qboolean forcePaint) {
 int i;

 if (menu == ((void*)0)) {
  return;
 }

 if (!(menu->window.flags & WINDOW_VISIBLE) && !forcePaint) {
  return;
 }

 if (menu->window.ownerDrawFlags && DC->ownerDrawVisible && !DC->ownerDrawVisible(menu->window.ownerDrawFlags)) {
  return;
 }

 if (forcePaint) {
  menu->window.flags |= WINDOW_FORCED;
 }


 if (menu->fullScreen) {


  DC->drawHandlePic( 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, menu->window.background );
 } else if (menu->window.background) {


 }


 Window_Paint(&menu->window, menu->fadeAmount, menu->fadeClamp, menu->fadeCycle );

 for (i = 0; i < menu->itemCount; i++) {
  Item_Paint(menu->items[i]);
 }

 if (debugMode) {
  vec4_t color;
  color[0] = color[2] = color[3] = 1;
  color[1] = 0;
  DC->drawRect(menu->window.rect.x, menu->window.rect.y, menu->window.rect.w, menu->window.rect.h, 1, color);
 }
}

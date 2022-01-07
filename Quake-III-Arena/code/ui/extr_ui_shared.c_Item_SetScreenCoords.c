
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ h; scalar_t__ w; } ;
struct TYPE_8__ {int h; int w; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {int h; int w; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_9__ {scalar_t__ border; TYPE_2__ rectClient; TYPE_1__ rect; scalar_t__ borderSize; } ;
struct TYPE_11__ {TYPE_4__ textRect; TYPE_3__ window; } ;
typedef TYPE_5__ itemDef_t ;



void Item_SetScreenCoords(itemDef_t *item, float x, float y) {

  if (item == ((void*)0)) {
    return;
  }

  if (item->window.border != 0) {
    x += item->window.borderSize;
    y += item->window.borderSize;
  }

  item->window.rect.x = x + item->window.rectClient.x;
  item->window.rect.y = y + item->window.rectClient.y;
  item->window.rect.w = item->window.rectClient.w;
  item->window.rect.h = item->window.rectClient.h;


  item->textRect.w = 0;
  item->textRect.h = 0;
}

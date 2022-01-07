
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ h; int y; scalar_t__ w; } ;
typedef TYPE_1__ rectDef_t ;
struct TYPE_7__ {TYPE_1__ textRect; } ;
typedef TYPE_2__ itemDef_t ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static rectDef_t *Item_CorrectedTextRect(itemDef_t *item) {
 static rectDef_t rect;
 memset(&rect, 0, sizeof(rectDef_t));
 if (item) {
  rect = item->textRect;
  if (rect.w) {
   rect.y -= rect.h;
  }
 }
 return &rect;
}

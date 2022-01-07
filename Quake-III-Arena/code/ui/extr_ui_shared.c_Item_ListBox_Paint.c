
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ qhandle_t ;
struct TYPE_14__ {float endPos; float startPos; scalar_t__ elementStyle; int elementWidth; int elementHeight; float drawPadding; scalar_t__ numColumns; TYPE_2__* columnInfo; } ;
typedef TYPE_5__ listBoxDef_t ;
struct TYPE_13__ {int x; int y; int h; float w; } ;
struct TYPE_12__ {int flags; int outlineColor; TYPE_4__ rect; int foreColor; int borderColor; int borderSize; } ;
struct TYPE_15__ {float cursorPos; TYPE_3__ window; int textStyle; int textscale; int special; scalar_t__ typeData; } ;
typedef TYPE_6__ itemDef_t ;
struct TYPE_10__ {scalar_t__ scrollBarArrowLeft; scalar_t__ scrollBar; scalar_t__ scrollBarArrowRight; scalar_t__ scrollBarThumb; scalar_t__ scrollBarArrowUp; scalar_t__ scrollBarArrowDown; } ;
struct TYPE_16__ {float (* feederCount ) (int ) ;scalar_t__ (* feederItemImage ) (int ,float) ;char* (* feederItemText ) (int ,float,int,scalar_t__*) ;int (* fillRect ) (float,float,float,float,int ) ;int (* drawText ) (float,float,int ,int ,char const*,int ,int ,int ) ;int (* drawHandlePic ) (float,float,int,int,scalar_t__) ;int (* drawRect ) (float,float,int,int,int ,int ) ;TYPE_1__ Assets; } ;
struct TYPE_11__ {float pos; int width; int maxChars; } ;


 TYPE_9__* DC ;
 float Item_ListBox_ThumbDrawPosition (TYPE_6__*) ;
 scalar_t__ LISTBOX_IMAGE ;
 int SCROLLBAR_SIZE ;
 int WINDOW_HORIZONTAL ;
 float stub1 (int ) ;
 int stub10 (float,float,int,float,scalar_t__) ;
 int stub11 (float,float,int,int,scalar_t__) ;
 int stub12 (float,float,int,int,scalar_t__) ;
 scalar_t__ stub13 (int ,float) ;
 int stub14 (float,float,int,int,scalar_t__) ;
 int stub15 (float,float,int,int,int ,int ) ;
 char* stub16 (int ,float,int,scalar_t__*) ;
 int stub17 (float,float,int,int,scalar_t__) ;
 int stub18 (float,float,int ,int ,char const*,int ,int ,int ) ;
 char* stub19 (int ,float,int,scalar_t__*) ;
 int stub2 (float,float,int,int,scalar_t__) ;
 int stub20 (float,float,int ,int ,char const*,int ,int ,int ) ;
 int stub21 (float,float,float,float,int ) ;
 int stub3 (float,float,float,int,scalar_t__) ;
 int stub4 (float,float,int,int,scalar_t__) ;
 int stub5 (float,float,int,int,scalar_t__) ;
 scalar_t__ stub6 (int ,float) ;
 int stub7 (float,float,int,int,scalar_t__) ;
 int stub8 (float,float,int,int,int ,int ) ;
 int stub9 (float,float,int,int,scalar_t__) ;

void Item_ListBox_Paint(itemDef_t *item) {
 float x, y, size, count, i, thumb;
 qhandle_t image;
 qhandle_t optionalImage;
 listBoxDef_t *listPtr = (listBoxDef_t*)item->typeData;





 count = DC->feederCount(item->special);

 if (item->window.flags & WINDOW_HORIZONTAL) {


  x = item->window.rect.x + 1;
  y = item->window.rect.y + item->window.rect.h - SCROLLBAR_SIZE - 1;
  DC->drawHandlePic(x, y, SCROLLBAR_SIZE, SCROLLBAR_SIZE, DC->Assets.scrollBarArrowLeft);
  x += SCROLLBAR_SIZE - 1;
  size = item->window.rect.w - (SCROLLBAR_SIZE * 2);
  DC->drawHandlePic(x, y, size+1, SCROLLBAR_SIZE, DC->Assets.scrollBar);
  x += size - 1;
  DC->drawHandlePic(x, y, SCROLLBAR_SIZE, SCROLLBAR_SIZE, DC->Assets.scrollBarArrowRight);

  thumb = Item_ListBox_ThumbDrawPosition(item);
  if (thumb > x - SCROLLBAR_SIZE - 1) {
   thumb = x - SCROLLBAR_SIZE - 1;
  }
  DC->drawHandlePic(thumb, y, SCROLLBAR_SIZE, SCROLLBAR_SIZE, DC->Assets.scrollBarThumb);

  listPtr->endPos = listPtr->startPos;
  size = item->window.rect.w - 2;


  if (listPtr->elementStyle == LISTBOX_IMAGE) {

   x = item->window.rect.x + 1;
   y = item->window.rect.y + 1;
   for (i = listPtr->startPos; i < count; i++) {


    image = DC->feederItemImage(item->special, i);
    if (image) {
     DC->drawHandlePic(x+1, y+1, listPtr->elementWidth - 2, listPtr->elementHeight - 2, image);
    }

    if (i == item->cursorPos) {
     DC->drawRect(x, y, listPtr->elementWidth-1, listPtr->elementHeight-1, item->window.borderSize, item->window.borderColor);
    }

    size -= listPtr->elementWidth;
    if (size < listPtr->elementWidth) {
     listPtr->drawPadding = size;
     break;
    }
    x += listPtr->elementWidth;
    listPtr->endPos++;

   }
  } else {

  }
 } else {

  x = item->window.rect.x + item->window.rect.w - SCROLLBAR_SIZE - 1;
  y = item->window.rect.y + 1;
  DC->drawHandlePic(x, y, SCROLLBAR_SIZE, SCROLLBAR_SIZE, DC->Assets.scrollBarArrowUp);
  y += SCROLLBAR_SIZE - 1;

  listPtr->endPos = listPtr->startPos;
  size = item->window.rect.h - (SCROLLBAR_SIZE * 2);
  DC->drawHandlePic(x, y, SCROLLBAR_SIZE, size+1, DC->Assets.scrollBar);
  y += size - 1;
  DC->drawHandlePic(x, y, SCROLLBAR_SIZE, SCROLLBAR_SIZE, DC->Assets.scrollBarArrowDown);

  thumb = Item_ListBox_ThumbDrawPosition(item);
  if (thumb > y - SCROLLBAR_SIZE - 1) {
   thumb = y - SCROLLBAR_SIZE - 1;
  }
  DC->drawHandlePic(x, thumb, SCROLLBAR_SIZE, SCROLLBAR_SIZE, DC->Assets.scrollBarThumb);


  size = item->window.rect.h - 2;
  if (listPtr->elementStyle == LISTBOX_IMAGE) {

   x = item->window.rect.x + 1;
   y = item->window.rect.y + 1;
   for (i = listPtr->startPos; i < count; i++) {


    image = DC->feederItemImage(item->special, i);
    if (image) {
     DC->drawHandlePic(x+1, y+1, listPtr->elementWidth - 2, listPtr->elementHeight - 2, image);
    }

    if (i == item->cursorPos) {
     DC->drawRect(x, y, listPtr->elementWidth - 1, listPtr->elementHeight - 1, item->window.borderSize, item->window.borderColor);
    }

    listPtr->endPos++;
    size -= listPtr->elementWidth;
    if (size < listPtr->elementHeight) {
     listPtr->drawPadding = listPtr->elementHeight - size;
     break;
    }
    y += listPtr->elementHeight;

   }
  } else {
   x = item->window.rect.x + 1;
   y = item->window.rect.y + 1;
   for (i = listPtr->startPos; i < count; i++) {
    const char *text;



    if (listPtr->numColumns > 0) {
     int j;
     for (j = 0; j < listPtr->numColumns; j++) {
      text = DC->feederItemText(item->special, i, j, &optionalImage);
      if (optionalImage >= 0) {
       DC->drawHandlePic(x + 4 + listPtr->columnInfo[j].pos, y - 1 + listPtr->elementHeight / 2, listPtr->columnInfo[j].width, listPtr->columnInfo[j].width, optionalImage);
      } else if (text) {
       DC->drawText(x + 4 + listPtr->columnInfo[j].pos, y + listPtr->elementHeight, item->textscale, item->window.foreColor, text, 0, listPtr->columnInfo[j].maxChars, item->textStyle);
      }
     }
    } else {
     text = DC->feederItemText(item->special, i, 0, &optionalImage);
     if (optionalImage >= 0) {

     } else if (text) {
      DC->drawText(x + 4, y + listPtr->elementHeight, item->textscale, item->window.foreColor, text, 0, 0, item->textStyle);
     }
    }

    if (i == item->cursorPos) {
     DC->fillRect(x + 2, y + 2, item->window.rect.w - SCROLLBAR_SIZE - 4, listPtr->elementHeight, item->window.outlineColor);
    }

    size -= listPtr->elementHeight;
    if (size < listPtr->elementHeight) {
     listPtr->drawPadding = listPtr->elementHeight - size;
     break;
    }
    listPtr->endPos++;
    y += listPtr->elementHeight;

   }
  }
 }
}

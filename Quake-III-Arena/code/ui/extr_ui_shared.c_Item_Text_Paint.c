
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vec4_t ;
typedef int text ;
struct TYPE_11__ {int y; int x; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_12__ {char* text; int textStyle; int textscale; TYPE_2__ textRect; int * cvar; TYPE_1__ window; } ;
typedef TYPE_3__ itemDef_t ;
struct TYPE_13__ {int (* drawText ) (int ,int ,int ,int ,char const*,int ,int ,int ) ;int (* getCVarString ) (int *,char*,int) ;} ;


 TYPE_9__* DC ;
 int Item_SetTextExtents (TYPE_3__*,int*,int*,char const*) ;
 int Item_TextColor (TYPE_3__*,int *) ;
 int Item_Text_AutoWrapped_Paint (TYPE_3__*) ;
 int Item_Text_Wrapped_Paint (TYPE_3__*) ;
 int WINDOW_AUTOWRAPPED ;
 int WINDOW_WRAPPED ;
 int stub1 (int *,char*,int) ;
 int stub2 (int ,int ,int ,int ,char const*,int ,int ,int ) ;

void Item_Text_Paint(itemDef_t *item) {
 char text[1024];
 const char *textPtr;
 int height, width;
 vec4_t color;

 if (item->window.flags & WINDOW_WRAPPED) {
  Item_Text_Wrapped_Paint(item);
  return;
 }
 if (item->window.flags & WINDOW_AUTOWRAPPED) {
  Item_Text_AutoWrapped_Paint(item);
  return;
 }

 if (item->text == ((void*)0)) {
  if (item->cvar == ((void*)0)) {
   return;
  }
  else {
   DC->getCVarString(item->cvar, text, sizeof(text));
   textPtr = text;
  }
 }
 else {
  textPtr = item->text;
 }


 Item_SetTextExtents(item, &width, &height, textPtr);

 if (*textPtr == '\0') {
  return;
 }


 Item_TextColor(item, &color);
 DC->drawText(item->textRect.x, item->textRect.y, item->textscale, color, textPtr, 0, 0, item->textStyle);
}

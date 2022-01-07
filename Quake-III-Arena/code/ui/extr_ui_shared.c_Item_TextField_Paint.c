
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef double* vec4_t ;
struct TYPE_11__ {double* focusColor; } ;
typedef TYPE_3__ menuDef_t ;
struct TYPE_10__ {int y; scalar_t__ w; scalar_t__ x; } ;
struct TYPE_9__ {int flags; int foreColor; } ;
struct TYPE_12__ {int cursorPos; int textStyle; int textscale; TYPE_2__ textRect; TYPE_1__ window; scalar_t__* text; scalar_t__ parent; scalar_t__ cvar; scalar_t__ typeData; } ;
typedef TYPE_4__ itemDef_t ;
struct TYPE_13__ {int paintOffset; int maxPaintChars; } ;
typedef TYPE_5__ editFieldDef_t ;
typedef int buff ;
struct TYPE_14__ {int realTime; int (* drawText ) (scalar_t__,int ,int ,double*,char*,int ,int ,int ) ;int (* drawTextWithCursor ) (scalar_t__,int ,int ,double*,char*,int,char,int ,int ) ;scalar_t__ (* getOverstrikeMode ) () ;int (* getCVarString ) (scalar_t__,char*,int) ;} ;


 TYPE_8__* DC ;
 int Item_Text_Paint (TYPE_4__*) ;
 int LerpColor (double*,double*,double*,double) ;
 int PULSE_DIVISOR ;
 int WINDOW_HASFOCUS ;
 scalar_t__ g_editingField ;
 int memcpy (double**,int *,int) ;
 double sin (int) ;
 int stub1 (scalar_t__,char*,int) ;
 scalar_t__ stub2 () ;
 int stub3 (scalar_t__,int ,int ,double*,char*,int,char,int ,int ) ;
 int stub4 (scalar_t__,int ,int ,double*,char*,int ,int ,int ) ;

void Item_TextField_Paint(itemDef_t *item) {
 char buff[1024];
 vec4_t newColor, lowLight;
 int offset;
 menuDef_t *parent = (menuDef_t*)item->parent;
 editFieldDef_t *editPtr = (editFieldDef_t*)item->typeData;

 Item_Text_Paint(item);

 buff[0] = '\0';

 if (item->cvar) {
  DC->getCVarString(item->cvar, buff, sizeof(buff));
 }

 parent = (menuDef_t*)item->parent;

 if (item->window.flags & WINDOW_HASFOCUS) {
  lowLight[0] = 0.8 * parent->focusColor[0];
  lowLight[1] = 0.8 * parent->focusColor[1];
  lowLight[2] = 0.8 * parent->focusColor[2];
  lowLight[3] = 0.8 * parent->focusColor[3];
  LerpColor(parent->focusColor,lowLight,newColor,0.5+0.5*sin(DC->realTime / PULSE_DIVISOR));
 } else {
  memcpy(&newColor, &item->window.foreColor, sizeof(vec4_t));
 }

 offset = (item->text && *item->text) ? 8 : 0;
 if (item->window.flags & WINDOW_HASFOCUS && g_editingField) {
  char cursor = DC->getOverstrikeMode() ? '_' : '|';
  DC->drawTextWithCursor(item->textRect.x + item->textRect.w + offset, item->textRect.y, item->textscale, newColor, buff + editPtr->paintOffset, item->cursorPos - editPtr->paintOffset , cursor, editPtr->maxPaintChars, item->textStyle);
 } else {
  DC->drawText(item->textRect.x + item->textRect.w + offset, item->textRect.y, item->textscale, newColor, buff + editPtr->paintOffset, 0, editPtr->maxPaintChars, item->textStyle);
 }

}

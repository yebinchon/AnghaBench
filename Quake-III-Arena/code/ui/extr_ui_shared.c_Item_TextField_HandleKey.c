
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_8__ {int cursorPos; scalar_t__ type; int parent; scalar_t__ cvar; scalar_t__ typeData; } ;
typedef TYPE_1__ itemDef_t ;
struct TYPE_9__ {int maxChars; int paintOffset; int maxPaintChars; } ;
typedef TYPE_2__ editFieldDef_t ;
typedef int buff ;
struct TYPE_10__ {int (* getOverstrikeMode ) () ;int (* setOverstrikeMode ) (int) ;int (* setCVar ) (scalar_t__,char*) ;int (* getCVarString ) (scalar_t__,char*,int) ;} ;


 TYPE_7__* DC ;
 scalar_t__ ITEM_TYPE_EDITFIELD ;
 scalar_t__ ITEM_TYPE_NUMERICFIELD ;
 int K_CHAR_FLAG ;
 int K_DEL ;
 int K_DOWNARROW ;
 int K_END ;
 int K_ENTER ;
 int K_ESCAPE ;
 int K_HOME ;
 int K_INS ;
 int K_KP_DEL ;
 int K_KP_DOWNARROW ;
 int K_KP_END ;
 int K_KP_ENTER ;
 int K_KP_HOME ;
 int K_KP_INS ;
 int K_KP_LEFTARROW ;
 int K_KP_RIGHTARROW ;
 int K_KP_UPARROW ;
 int K_LEFTARROW ;
 int K_RIGHTARROW ;
 int K_TAB ;
 int K_UPARROW ;
 int MAX_EDITFIELD ;
 TYPE_1__* Menu_SetNextCursorItem (int ) ;
 TYPE_1__* Menu_SetPrevCursorItem (int ) ;
 TYPE_1__* g_editItem ;
 int memmove (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int qfalse ;
 int qtrue ;
 int strlen (char*) ;
 int stub1 (scalar_t__,char*,int) ;
 int stub2 (scalar_t__,char*) ;
 int stub3 () ;
 int stub4 (scalar_t__,char*) ;
 int stub5 (scalar_t__,char*) ;
 int stub6 (int) ;
 int stub7 () ;

qboolean Item_TextField_HandleKey(itemDef_t *item, int key) {
 char buff[1024];
 int len;
 itemDef_t *newItem = ((void*)0);
 editFieldDef_t *editPtr = (editFieldDef_t*)item->typeData;

 if (item->cvar) {

  memset(buff, 0, sizeof(buff));
  DC->getCVarString(item->cvar, buff, sizeof(buff));
  len = strlen(buff);
  if (editPtr->maxChars && len > editPtr->maxChars) {
   len = editPtr->maxChars;
  }
  if ( key & K_CHAR_FLAG ) {
   key &= ~K_CHAR_FLAG;


   if (key == 'h' - 'a' + 1 ) {
    if ( item->cursorPos > 0 ) {
     memmove( &buff[item->cursorPos - 1], &buff[item->cursorPos], len + 1 - item->cursorPos);
     item->cursorPos--;
     if (item->cursorPos < editPtr->paintOffset) {
      editPtr->paintOffset--;
     }
    }
    DC->setCVar(item->cvar, buff);
       return qtrue;
   }





   if ( key < 32 || !item->cvar) {
       return qtrue;
      }

   if (item->type == ITEM_TYPE_NUMERICFIELD) {
    if (key < '0' || key > '9') {
     return qfalse;
    }
   }

   if (!DC->getOverstrikeMode()) {
    if (( len == MAX_EDITFIELD - 1 ) || (editPtr->maxChars && len >= editPtr->maxChars)) {
     return qtrue;
    }
    memmove( &buff[item->cursorPos + 1], &buff[item->cursorPos], len + 1 - item->cursorPos );
   } else {
    if (editPtr->maxChars && item->cursorPos >= editPtr->maxChars) {
     return qtrue;
    }
   }

   buff[item->cursorPos] = key;

   DC->setCVar(item->cvar, buff);

   if (item->cursorPos < len + 1) {
    item->cursorPos++;
    if (editPtr->maxPaintChars && item->cursorPos > editPtr->maxPaintChars) {
     editPtr->paintOffset++;
    }
   }

  } else {

   if ( key == K_DEL || key == K_KP_DEL ) {
    if ( item->cursorPos < len ) {
     memmove( buff + item->cursorPos, buff + item->cursorPos + 1, len - item->cursorPos);
     DC->setCVar(item->cvar, buff);
    }
    return qtrue;
   }

   if ( key == K_RIGHTARROW || key == K_KP_RIGHTARROW )
   {
    if (editPtr->maxPaintChars && item->cursorPos >= editPtr->maxPaintChars && item->cursorPos < len) {
     item->cursorPos++;
     editPtr->paintOffset++;
     return qtrue;
    }
    if (item->cursorPos < len) {
     item->cursorPos++;
    }
    return qtrue;
   }

   if ( key == K_LEFTARROW || key == K_KP_LEFTARROW )
   {
    if ( item->cursorPos > 0 ) {
     item->cursorPos--;
    }
    if (item->cursorPos < editPtr->paintOffset) {
     editPtr->paintOffset--;
    }
    return qtrue;
   }

   if ( key == K_HOME || key == K_KP_HOME) {
    item->cursorPos = 0;
    editPtr->paintOffset = 0;
    return qtrue;
   }

   if ( key == K_END || key == K_KP_END) {
    item->cursorPos = len;
    if(item->cursorPos > editPtr->maxPaintChars) {
     editPtr->paintOffset = len - editPtr->maxPaintChars;
    }
    return qtrue;
   }

   if ( key == K_INS || key == K_KP_INS ) {
    DC->setOverstrikeMode(!DC->getOverstrikeMode());
    return qtrue;
   }
  }

  if (key == K_TAB || key == K_DOWNARROW || key == K_KP_DOWNARROW) {
   newItem = Menu_SetNextCursorItem(item->parent);
   if (newItem && (newItem->type == ITEM_TYPE_EDITFIELD || newItem->type == ITEM_TYPE_NUMERICFIELD)) {
    g_editItem = newItem;
   }
  }

  if (key == K_UPARROW || key == K_KP_UPARROW) {
   newItem = Menu_SetPrevCursorItem(item->parent);
   if (newItem && (newItem->type == ITEM_TYPE_EDITFIELD || newItem->type == ITEM_TYPE_NUMERICFIELD)) {
    g_editItem = newItem;
   }
  }

  if ( key == K_ENTER || key == K_KP_ENTER || key == K_ESCAPE) {
   return qfalse;
  }

  return qtrue;
 }
 return qfalse;

}

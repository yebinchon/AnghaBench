
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int sfxHandle_t ;
struct TYPE_15__ {int flags; int x; int y; int (* callback ) (TYPE_2__*,int ) ;} ;
struct TYPE_16__ {int width; int seperation; int columns; int height; int top; int numitems; int oldvalue; int curvalue; int** itemnames; TYPE_1__ generic; } ;
typedef TYPE_2__ menulist_s ;
struct TYPE_17__ {int cursory; int cursorx; } ;
 int QMF_CENTER_JUSTIFY ;
 int QMF_HASMOUSEFOCUS ;
 int QM_GOTFOCUS ;
 int Q_isprint (int) ;
 scalar_t__ Q_isupper (int) ;
 int SMALLCHAR_HEIGHT ;
 int SMALLCHAR_WIDTH ;
 int UI_CursorInRect (int,int,int,int) ;
 int menu_buzz_sound ;
 int menu_move_sound ;
 int menu_null_sound ;
 int stub1 (TYPE_2__*,int ) ;
 int stub10 (TYPE_2__*,int ) ;
 int stub2 (TYPE_2__*,int ) ;
 int stub3 (TYPE_2__*,int ) ;
 int stub4 (TYPE_2__*,int ) ;
 int stub5 (TYPE_2__*,int ) ;
 int stub6 (TYPE_2__*,int ) ;
 int stub7 (TYPE_2__*,int ) ;
 int stub8 (TYPE_2__*,int ) ;
 int stub9 (TYPE_2__*,int ) ;
 TYPE_3__ uis ;

sfxHandle_t ScrollList_Key( menulist_s *l, int key )
{
 int x;
 int y;
 int w;
 int i;
 int j;
 int c;
 int cursorx;
 int cursory;
 int column;
 int index;

 switch (key)
 {
  case 132:
   if (l->generic.flags & QMF_HASMOUSEFOCUS)
   {

    x = l->generic.x;
    y = l->generic.y;
    w = ( (l->width + l->seperation) * l->columns - l->seperation) * SMALLCHAR_WIDTH;
    if( l->generic.flags & QMF_CENTER_JUSTIFY ) {
     x -= w / 2;
    }
    if (UI_CursorInRect( x, y, w, l->height*SMALLCHAR_HEIGHT ))
    {
     cursorx = (uis.cursorx - x)/SMALLCHAR_WIDTH;
     column = cursorx / (l->width + l->seperation);
     cursory = (uis.cursory - y)/SMALLCHAR_HEIGHT;
     index = column * l->height + cursory;
     if (l->top + index < l->numitems)
     {
      l->oldvalue = l->curvalue;
      l->curvalue = l->top + index;

      if (l->oldvalue != l->curvalue && l->generic.callback)
      {
       l->generic.callback( l, QM_GOTFOCUS );
       return (menu_move_sound);
      }
     }
    }


    return (menu_null_sound);
   }
   break;

  case 139:
  case 142:
   l->oldvalue = l->curvalue;
   l->curvalue = 0;
   l->top = 0;

   if (l->oldvalue != l->curvalue && l->generic.callback)
   {
    l->generic.callback( l, QM_GOTFOCUS );
    return (menu_move_sound);
   }
   return (menu_buzz_sound);

  case 140:
  case 143:
   l->oldvalue = l->curvalue;
   l->curvalue = l->numitems-1;
   if( l->columns > 1 ) {
    c = (l->curvalue / l->height + 1) * l->height;
    l->top = c - (l->columns * l->height);
   }
   else {
    l->top = l->curvalue - (l->height - 1);
   }
   if (l->top < 0)
    l->top = 0;

   if (l->oldvalue != l->curvalue && l->generic.callback)
   {
    l->generic.callback( l, QM_GOTFOCUS );
    return (menu_move_sound);
   }
   return (menu_buzz_sound);

  case 130:
  case 136:
   if( l->columns > 1 ) {
    return menu_null_sound;
   }

   if (l->curvalue > 0)
   {
    l->oldvalue = l->curvalue;
    l->curvalue -= l->height-1;
    if (l->curvalue < 0)
     l->curvalue = 0;
    l->top = l->curvalue;
    if (l->top < 0)
     l->top = 0;

    if (l->generic.callback)
     l->generic.callback( l, QM_GOTFOCUS );

    return (menu_move_sound);
   }
   return (menu_buzz_sound);

  case 131:
  case 137:
   if( l->columns > 1 ) {
    return menu_null_sound;
   }

   if (l->curvalue < l->numitems-1)
   {
    l->oldvalue = l->curvalue;
    l->curvalue += l->height-1;
    if (l->curvalue > l->numitems-1)
     l->curvalue = l->numitems-1;
    l->top = l->curvalue - (l->height-1);
    if (l->top < 0)
     l->top = 0;

    if (l->generic.callback)
     l->generic.callback( l, QM_GOTFOCUS );

    return (menu_move_sound);
   }
   return (menu_buzz_sound);

  case 134:
  case 128:
   if( l->curvalue == 0 ) {
    return menu_buzz_sound;
   }

   l->oldvalue = l->curvalue;
   l->curvalue--;

   if( l->curvalue < l->top ) {
    if( l->columns == 1 ) {
     l->top--;
    }
    else {
     l->top -= l->height;
    }
   }

   if( l->generic.callback ) {
    l->generic.callback( l, QM_GOTFOCUS );
   }

   return (menu_move_sound);

  case 141:
  case 144:
   if( l->curvalue == l->numitems - 1 ) {
    return menu_buzz_sound;
   }

   l->oldvalue = l->curvalue;
   l->curvalue++;

   if( l->curvalue >= l->top + l->columns * l->height ) {
    if( l->columns == 1 ) {
     l->top++;
    }
    else {
     l->top += l->height;
    }
   }

   if( l->generic.callback ) {
    l->generic.callback( l, QM_GOTFOCUS );
   }

   return menu_move_sound;

  case 138:
  case 133:
   if( l->columns == 1 ) {
    return menu_null_sound;
   }

   if( l->curvalue < l->height ) {
    return menu_buzz_sound;
   }

   l->oldvalue = l->curvalue;
   l->curvalue -= l->height;

   if( l->curvalue < l->top ) {
    l->top -= l->height;
   }

   if( l->generic.callback ) {
    l->generic.callback( l, QM_GOTFOCUS );
   }

   return menu_move_sound;

  case 135:
  case 129:
   if( l->columns == 1 ) {
    return menu_null_sound;
   }

   c = l->curvalue + l->height;

   if( c >= l->numitems ) {
    return menu_buzz_sound;
   }

   l->oldvalue = l->curvalue;
   l->curvalue = c;

   if( l->curvalue > l->top + l->columns * l->height - 1 ) {
    l->top += l->height;
   }

   if( l->generic.callback ) {
    l->generic.callback( l, QM_GOTFOCUS );
   }

   return menu_move_sound;
 }


 if ( !Q_isprint( key ) )
  return (0);


 if ( Q_isupper( key ) )
 {
  key -= 'A' - 'a';
 }


 for (i=1; i<=l->numitems; i++)
 {
  j = (l->curvalue + i) % l->numitems;
  c = l->itemnames[j][0];
  if ( Q_isupper( c ) )
  {
   c -= 'A' - 'a';
  }

  if (c == key)
  {

   if (j < l->top)
   {

    l->top = j;
   }
   else if (j > l->top+l->height-1)
   {

    l->top = (j+1) - l->height;
   }

   if (l->curvalue != j)
   {
    l->oldvalue = l->curvalue;
    l->curvalue = j;
    if (l->generic.callback)
     l->generic.callback( l, QM_GOTFOCUS );
    return ( menu_move_sound );
   }

   return (menu_buzz_sound);
  }
 }

 return (menu_buzz_sound);
}

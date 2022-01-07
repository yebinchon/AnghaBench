
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {short x; short y; short numitems; TYPE_1__* menuitems; int (* routine ) () ;} ;
struct TYPE_5__ {int height; } ;
struct TYPE_4__ {scalar_t__* name; } ;


 short LINEHEIGHT ;
 int M_StringHeight (char*) ;
 int M_StringWidth (char*) ;
 int M_WriteText (short,short,char*) ;
 int PU_CACHE ;
 scalar_t__ SHORT (int ) ;
 short SKULLXOFF ;
 int V_DrawPatchDirect (short,int,int ,int ) ;
 int W_CacheLumpName (scalar_t__*,int ) ;
 TYPE_3__* currentMenu ;
 TYPE_2__** hu_font ;
 int inhelpscreens ;
 short itemOn ;
 int memset (char*,int ,int) ;
 int menuactive ;
 char* messageString ;
 scalar_t__ messageToPrint ;
 scalar_t__** skullName ;
 int strcpy (char*,char*) ;
 short strlen (char*) ;
 int strncpy (char*,char*,short) ;
 int stub1 () ;
 size_t whichSkull ;

void M_Drawer (void)
{
    static short x;
    static short y;
    short i;
    short max;
    char string[40];
    int start;

    inhelpscreens = 0;



    if (messageToPrint)
    {
 start = 0;
 y = 100 - M_StringHeight(messageString)/2;
 while(*(messageString+start))
 {
     for (i = 0;i < strlen(messageString+start);i++)
  if (*(messageString+start+i) == '\n')
  {
      memset(string,0,40);
      strncpy(string,messageString+start,i);
      start += i+1;
      break;
  }

     if (i == strlen(messageString+start))
     {
  strcpy(string,messageString+start);
  start += i;
     }

     x = 160 - M_StringWidth(string)/2;
     M_WriteText(x,y,string);
     y += SHORT(hu_font[0]->height);
 }
 return;
    }

    if (!menuactive)
 return;

    if (currentMenu->routine)
 currentMenu->routine();


    x = currentMenu->x;
    y = currentMenu->y;
    max = currentMenu->numitems;

    for (i=0;i<max;i++)
    {
 if (currentMenu->menuitems[i].name[0])
     V_DrawPatchDirect (x,y,0,
          W_CacheLumpName(currentMenu->menuitems[i].name ,PU_CACHE));
 y += LINEHEIGHT;
    }



    V_DrawPatchDirect(x + SKULLXOFF,currentMenu->y - 5 + itemOn*LINEHEIGHT, 0,
        W_CacheLumpName(skullName[whichSkull],PU_CACHE));

}

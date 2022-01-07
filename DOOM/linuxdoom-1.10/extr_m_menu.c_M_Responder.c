
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ type; int data3; int data2; int data1; } ;
typedef TYPE_2__ event_t ;
typedef int boolean ;
struct TYPE_12__ {int numitems; size_t lastOn; TYPE_1__* menuitems; struct TYPE_12__* prevMenu; } ;
struct TYPE_11__ {int message; } ;
struct TYPE_9__ {int status; int alphaKey; int (* routine ) (size_t) ;} ;


 int G_ScreenShot () ;
 int HU_FONTSIZE ;
 int HU_FONTSTART ;
 int I_GetTime () ;
 int I_SetPalette (int ) ;
 int M_ChangeDetail (int ) ;
 int M_ChangeMessages (int ) ;
 int M_ClearMenus () ;
 int M_DoSave (size_t) ;
 int M_EndGame (int ) ;
 int M_LoadGame (int ) ;
 int M_QuickLoad () ;
 int M_QuickSave () ;
 int M_QuitDOOM (int ) ;
 int M_SaveGame (int ) ;
 int M_SizeDisplay (int) ;
 int M_StartControlPanel () ;
 int M_StringWidth (int*) ;
 int PU_CACHE ;
 TYPE_4__ ReadDef1 ;
 TYPE_4__ ReadDef2 ;
 int SAVESTRINGSIZE ;
 int S_StartSound (int *,int ) ;
 TYPE_4__ SoundDef ;
 int W_CacheLumpName (char*,int ) ;
 int automapactive ;
 int chat_on ;
 size_t consoleplayer ;
 TYPE_4__* currentMenu ;
 scalar_t__ devparm ;
 scalar_t__ ev_joystick ;
 scalar_t__ ev_keydown ;
 scalar_t__ ev_mouse ;
 int gamemode ;
 int * gammamsg ;
 size_t itemOn ;
 int menuactive ;
 int messageLastMenuActive ;
 int messageNeedsInput ;
 int messageRoutine (int) ;
 scalar_t__ messageToPrint ;
 TYPE_3__* players ;
 int retail ;
 size_t saveCharIndex ;
 int saveOldString ;
 size_t saveSlot ;
 scalar_t__ saveStringEnter ;
 int** savegamestrings ;
 int sfx_pistol ;
 int sfx_pstop ;
 int sfx_stnmov ;
 int sfx_swtchn ;
 int sfx_swtchx ;
 size_t sfx_vol ;
 int strcpy (int*,int ) ;
 int stub1 (int) ;
 int stub2 (int) ;
 int stub3 (int) ;
 int stub4 (size_t) ;
 int toupper (int) ;
 int usegamma ;

boolean M_Responder (event_t* ev)
{
    int ch;
    int i;
    static int joywait = 0;
    static int mousewait = 0;
    static int mousey = 0;
    static int lasty = 0;
    static int mousex = 0;
    static int lastx = 0;

    ch = -1;

    if (ev->type == ev_joystick && joywait < I_GetTime())
    {
 if (ev->data3 == -1)
 {
     ch = 128;
     joywait = I_GetTime() + 5;
 }
 else if (ev->data3 == 1)
 {
     ch = 146;
     joywait = I_GetTime() + 5;
 }

 if (ev->data2 == -1)
 {
     ch = 131;
     joywait = I_GetTime() + 2;
 }
 else if (ev->data2 == 1)
 {
     ch = 129;
     joywait = I_GetTime() + 2;
 }

 if (ev->data1&1)
 {
     ch = 145;
     joywait = I_GetTime() + 5;
 }
 if (ev->data1&2)
 {
     ch = 147;
     joywait = I_GetTime() + 5;
 }
    }
    else
    {
 if (ev->type == ev_mouse && mousewait < I_GetTime())
 {
     mousey += ev->data3;
     if (mousey < lasty-30)
     {
  ch = 146;
  mousewait = I_GetTime() + 5;
  mousey = lasty -= 30;
     }
     else if (mousey > lasty+30)
     {
  ch = 128;
  mousewait = I_GetTime() + 5;
  mousey = lasty += 30;
     }

     mousex += ev->data2;
     if (mousex < lastx-30)
     {
  ch = 131;
  mousewait = I_GetTime() + 5;
  mousex = lastx -= 30;
     }
     else if (mousex > lastx+30)
     {
  ch = 129;
  mousewait = I_GetTime() + 5;
  mousex = lastx += 30;
     }

     if (ev->data1&1)
     {
  ch = 145;
  mousewait = I_GetTime() + 15;
     }

     if (ev->data1&2)
     {
  ch = 147;
  mousewait = I_GetTime() + 15;
     }
 }
 else
     if (ev->type == ev_keydown)
     {
  ch = ev->data1;
     }
    }

    if (ch == -1)
 return 0;



    if (saveStringEnter)
    {
 switch(ch)
 {
   case 147:
     if (saveCharIndex > 0)
     {
  saveCharIndex--;
  savegamestrings[saveSlot][saveCharIndex] = 0;
     }
     break;

   case 143:
     saveStringEnter = 0;
     strcpy(&savegamestrings[saveSlot][0],saveOldString);
     break;

   case 145:
     saveStringEnter = 0;
     if (savegamestrings[saveSlot][0])
  M_DoSave(saveSlot);
     break;

   default:
     ch = toupper(ch);
     if (ch != 32)
  if (ch-HU_FONTSTART < 0 || ch-HU_FONTSTART >= HU_FONTSIZE)
      break;
     if (ch >= 32 && ch <= 127 &&
  saveCharIndex < SAVESTRINGSIZE-1 &&
  M_StringWidth(savegamestrings[saveSlot]) <
  (SAVESTRINGSIZE-2)*8)
     {
  savegamestrings[saveSlot][saveCharIndex++] = ch;
  savegamestrings[saveSlot][saveCharIndex] = 0;
     }
     break;
 }
 return 1;
    }


    if (messageToPrint)
    {
 if (messageNeedsInput == 1 &&
     !(ch == ' ' || ch == 'n' || ch == 'y' || ch == 143))
     return 0;

 menuactive = messageLastMenuActive;
 messageToPrint = 0;
 if (messageRoutine)
     messageRoutine(ch);

 menuactive = 0;
 S_StartSound(((void*)0),sfx_swtchx);
 return 1;
    }

    if (devparm && ch == 142)
    {
 G_ScreenShot ();
 return 1;
    }



    if (!menuactive)
 switch(ch)
 {
   case 130:
     if (automapactive || chat_on)
  return 0;
     M_SizeDisplay(0);
     S_StartSound(((void*)0),sfx_stnmov);
     return 1;

   case 144:
     if (automapactive || chat_on)
  return 0;
     M_SizeDisplay(1);
     S_StartSound(((void*)0),sfx_stnmov);
     return 1;

   case 142:
     M_StartControlPanel ();

     if ( gamemode == retail )
       currentMenu = &ReadDef2;
     else
       currentMenu = &ReadDef1;

     itemOn = 0;
     S_StartSound(((void*)0),sfx_swtchn);
     return 1;

   case 139:
     M_StartControlPanel();
     S_StartSound(((void*)0),sfx_swtchn);
     M_SaveGame(0);
     return 1;

   case 138:
     M_StartControlPanel();
     S_StartSound(((void*)0),sfx_swtchn);
     M_LoadGame(0);
     return 1;

   case 137:
     M_StartControlPanel ();
     currentMenu = &SoundDef;
     itemOn = sfx_vol;
     S_StartSound(((void*)0),sfx_swtchn);
     return 1;

   case 136:
     M_ChangeDetail(0);
     S_StartSound(((void*)0),sfx_swtchn);
     return 1;

   case 135:
     S_StartSound(((void*)0),sfx_swtchn);
     M_QuickSave();
     return 1;

   case 134:
     S_StartSound(((void*)0),sfx_swtchn);
     M_EndGame(0);
     return 1;

   case 133:
     M_ChangeMessages(0);
     S_StartSound(((void*)0),sfx_swtchn);
     return 1;

   case 132:
     S_StartSound(((void*)0),sfx_swtchn);
     M_QuickLoad();
     return 1;

   case 141:
     S_StartSound(((void*)0),sfx_swtchn);
     M_QuitDOOM(0);
     return 1;

   case 140:
     usegamma++;
     if (usegamma > 4)
  usegamma = 0;
     players[consoleplayer].message = gammamsg[usegamma];
     I_SetPalette (W_CacheLumpName ("PLAYPAL",PU_CACHE));
     return 1;

 }



    if (!menuactive)
    {
 if (ch == 143)
 {
     M_StartControlPanel ();
     S_StartSound(((void*)0),sfx_swtchn);
     return 1;
 }
 return 0;
    }



    switch (ch)
    {
      case 146:
 do
 {
     if (itemOn+1 > currentMenu->numitems-1)
  itemOn = 0;
     else itemOn++;
     S_StartSound(((void*)0),sfx_pstop);
 } while(currentMenu->menuitems[itemOn].status==-1);
 return 1;

      case 128:
 do
 {
     if (!itemOn)
  itemOn = currentMenu->numitems-1;
     else itemOn--;
     S_StartSound(((void*)0),sfx_pstop);
 } while(currentMenu->menuitems[itemOn].status==-1);
 return 1;

      case 131:
 if (currentMenu->menuitems[itemOn].routine &&
     currentMenu->menuitems[itemOn].status == 2)
 {
     S_StartSound(((void*)0),sfx_stnmov);
     currentMenu->menuitems[itemOn].routine(0);
 }
 return 1;

      case 129:
 if (currentMenu->menuitems[itemOn].routine &&
     currentMenu->menuitems[itemOn].status == 2)
 {
     S_StartSound(((void*)0),sfx_stnmov);
     currentMenu->menuitems[itemOn].routine(1);
 }
 return 1;

      case 145:
 if (currentMenu->menuitems[itemOn].routine &&
     currentMenu->menuitems[itemOn].status)
 {
     currentMenu->lastOn = itemOn;
     if (currentMenu->menuitems[itemOn].status == 2)
     {
  currentMenu->menuitems[itemOn].routine(1);
  S_StartSound(((void*)0),sfx_stnmov);
     }
     else
     {
  currentMenu->menuitems[itemOn].routine(itemOn);
  S_StartSound(((void*)0),sfx_pistol);
     }
 }
 return 1;

      case 143:
 currentMenu->lastOn = itemOn;
 M_ClearMenus ();
 S_StartSound(((void*)0),sfx_swtchx);
 return 1;

      case 147:
 currentMenu->lastOn = itemOn;
 if (currentMenu->prevMenu)
 {
     currentMenu = currentMenu->prevMenu;
     itemOn = currentMenu->lastOn;
     S_StartSound(((void*)0),sfx_swtchn);
 }
 return 1;

      default:
 for (i = itemOn+1;i < currentMenu->numitems;i++)
     if (currentMenu->menuitems[i].alphaKey == ch)
     {
  itemOn = i;
  S_StartSound(((void*)0),sfx_pstop);
  return 1;
     }
 for (i = 0;i <= itemOn;i++)
     if (currentMenu->menuitems[i].alphaKey == ch)
     {
  itemOn = i;
  S_StartSound(((void*)0),sfx_pstop);
  return 1;
     }
 break;

    }

    return 0;
}

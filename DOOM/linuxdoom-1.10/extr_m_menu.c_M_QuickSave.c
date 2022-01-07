
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GS_LEVEL ;
 int M_QuickSaveResponse ;
 int M_ReadSaveStrings () ;
 int M_SetupNextMenu (int *) ;
 int M_StartControlPanel () ;
 int M_StartMessage (int ,int ,int) ;
 char* QSPROMPT ;
 int S_StartSound (int *,int ) ;
 int SaveDef ;
 scalar_t__ gamestate ;
 size_t quickSaveSlot ;
 int * savegamestrings ;
 int sfx_oof ;
 int sprintf (int ,char*,int ) ;
 int tempstring ;
 int usergame ;

void M_QuickSave(void)
{
    if (!usergame)
    {
 S_StartSound(((void*)0),sfx_oof);
 return;
    }

    if (gamestate != GS_LEVEL)
 return;

    if (quickSaveSlot < 0)
    {
 M_StartControlPanel();
 M_ReadSaveStrings();
 M_SetupNextMenu(&SaveDef);
 quickSaveSlot = -2;
 return;
    }
    sprintf(tempstring,QSPROMPT,savegamestrings[quickSaveSlot]);
    M_StartMessage(tempstring,M_QuickSaveResponse,1);
}

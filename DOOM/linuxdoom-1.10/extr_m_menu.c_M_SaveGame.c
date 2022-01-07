
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GS_LEVEL ;
 int M_ReadSaveStrings () ;
 int M_SetupNextMenu (int *) ;
 int M_StartMessage (int ,int *,int) ;
 int SAVEDEAD ;
 int SaveDef ;
 scalar_t__ gamestate ;
 int usergame ;

void M_SaveGame (int choice)
{
    if (!usergame)
    {
 M_StartMessage(SAVEDEAD,((void*)0),0);
 return;
    }

    if (gamestate != GS_LEVEL)
 return;

    M_SetupNextMenu(&SaveDef);
    M_ReadSaveStrings();
}

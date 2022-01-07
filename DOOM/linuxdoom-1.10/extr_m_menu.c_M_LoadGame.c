
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOADNET ;
 int LoadDef ;
 int M_ReadSaveStrings () ;
 int M_SetupNextMenu (int *) ;
 int M_StartMessage (int ,int *,int) ;
 scalar_t__ netgame ;

void M_LoadGame (int choice)
{
    if (netgame)
    {
 M_StartMessage(LOADNET,((void*)0),0);
 return;
    }

    M_SetupNextMenu(&LoadDef);
    M_ReadSaveStrings();
}

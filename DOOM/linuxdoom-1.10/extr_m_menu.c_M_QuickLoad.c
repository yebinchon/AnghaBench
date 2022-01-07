
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * M_QuickLoadResponse ;
 int M_StartMessage (int ,int *,int) ;
 int QLOADNET ;
 char* QLPROMPT ;
 int QSAVESPOT ;
 scalar_t__ netgame ;
 size_t quickSaveSlot ;
 int * savegamestrings ;
 int sprintf (int ,char*,int ) ;
 int tempstring ;

void M_QuickLoad(void)
{
    if (netgame)
    {
 M_StartMessage(QLOADNET,((void*)0),0);
 return;
    }

    if (quickSaveSlot < 0)
    {
 M_StartMessage(QSAVESPOT,((void*)0),0);
 return;
    }
    sprintf(tempstring,QLPROMPT,savegamestrings[quickSaveSlot]);
    M_StartMessage(tempstring,M_QuickLoadResponse,1);
}

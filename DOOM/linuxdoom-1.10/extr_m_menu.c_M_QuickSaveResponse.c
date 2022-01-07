
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_DoSave (int ) ;
 int S_StartSound (int *,int ) ;
 int quickSaveSlot ;
 int sfx_swtchx ;

void M_QuickSaveResponse(int ch)
{
    if (ch == 'y')
    {
 M_DoSave(quickSaveSlot);
 S_StartSound(((void*)0),sfx_swtchx);
    }
}

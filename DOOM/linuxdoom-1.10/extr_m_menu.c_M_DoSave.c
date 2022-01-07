
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_SaveGame (int,int ) ;
 int M_ClearMenus () ;
 int quickSaveSlot ;
 int * savegamestrings ;

void M_DoSave(int slot)
{
    G_SaveGame (slot,savegamestrings[slot]);
    M_ClearMenus ();


    if (quickSaveSlot == -2)
 quickSaveSlot = slot;
}

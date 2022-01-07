
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMPTYSTRING ;
 int saveCharIndex ;
 int saveOldString ;
 int saveSlot ;
 int saveStringEnter ;
 scalar_t__** savegamestrings ;
 int strcmp (scalar_t__*,int ) ;
 int strcpy (int ,scalar_t__*) ;
 int strlen (scalar_t__*) ;

void M_SaveSelect(int choice)
{

    saveStringEnter = 1;

    saveSlot = choice;
    strcpy(saveOldString,savegamestrings[choice]);
    if (!strcmp(savegamestrings[choice],EMPTYSTRING))
 savegamestrings[choice][0] = 0;
    saveCharIndex = strlen(savegamestrings[choice]);
}

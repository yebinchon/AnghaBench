
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int savedescription ;
 int savegameslot ;
 int sendsave ;
 int strcpy (int ,char*) ;

void
G_SaveGame
( int slot,
  char* description )
{
    savegameslot = slot;
    strcpy (savedescription, description);
    sendsave = 1;
}

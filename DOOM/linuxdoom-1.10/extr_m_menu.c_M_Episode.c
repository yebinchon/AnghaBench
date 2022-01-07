
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_SetupNextMenu (int *) ;
 int M_StartMessage (int ,int *,int) ;
 int NewDef ;
 int ReadDef1 ;
 int SWSTRING ;
 int epi ;
 int fprintf (int ,char*) ;
 scalar_t__ gamemode ;
 scalar_t__ registered ;
 scalar_t__ shareware ;
 int stderr ;

void M_Episode(int choice)
{
    if ( (gamemode == shareware)
  && choice)
    {
 M_StartMessage(SWSTRING,((void*)0),0);
 M_SetupNextMenu(&ReadDef1);
 return;
    }


    if ( (gamemode == registered)
  && (choice > 2))
    {
      fprintf( stderr,
        "M_Episode: 4th episode requires UltimateDOOM\n");
      choice = 0;
    }

    epi = choice;
    M_SetupNextMenu(&NewDef);
}

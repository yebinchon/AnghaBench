
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GS_FINALE ;
 int S_ChangeMusic (int ,int) ;
 int automapactive ;
 int c1text ;
 int c2text ;
 int c3text ;
 int c4text ;
 int c5text ;
 int c6text ;

 int e1text ;
 int e2text ;
 int e3text ;
 int e4text ;
 scalar_t__ finalecount ;
 char* finaleflat ;
 scalar_t__ finalestage ;
 int finaletext ;
 int ga_nothing ;
 int gameaction ;
 int gameepisode ;
 int gamemap ;
 int gamemode ;
 int gamestate ;
 int mus_read_m ;
 int mus_victor ;



 int viewactive ;

void F_StartFinale (void)
{
    gameaction = ga_nothing;
    gamestate = GS_FINALE;
    viewactive = 0;
    automapactive = 0;




    switch ( gamemode )
    {


      case 128:
      case 130:
      case 129:
      {
 S_ChangeMusic(mus_victor, 1);

 switch (gameepisode)
 {
   case 1:
     finaleflat = "FLOOR4_8";
     finaletext = e1text;
     break;
   case 2:
     finaleflat = "SFLR6_1";
     finaletext = e2text;
     break;
   case 3:
     finaleflat = "MFLR8_4";
     finaletext = e3text;
     break;
   case 4:
     finaleflat = "MFLR8_3";
     finaletext = e4text;
     break;
   default:

     break;
 }
 break;
      }


      case 131:
      {
   S_ChangeMusic(mus_read_m, 1);

   switch (gamemap)
   {
     case 6:
       finaleflat = "SLIME16";
       finaletext = c1text;
       break;
     case 11:
       finaleflat = "RROCK14";
       finaletext = c2text;
       break;
     case 20:
       finaleflat = "RROCK07";
       finaletext = c3text;
       break;
     case 30:
       finaleflat = "RROCK17";
       finaletext = c4text;
       break;
     case 15:
       finaleflat = "RROCK13";
       finaletext = c5text;
       break;
     case 31:
       finaleflat = "RROCK19";
       finaletext = c6text;
       break;
     default:

       break;
   }
   break;
      }



      default:
 S_ChangeMusic(mus_read_m, 1);
 finaleflat = "F_SKY1";
 finaletext = c1text;
 break;
    }

    finalestage = 0;
    finalecount = 0;

}

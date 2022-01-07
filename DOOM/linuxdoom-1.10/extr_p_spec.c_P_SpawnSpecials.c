
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int special; } ;
typedef TYPE_1__ sector_t ;
typedef int button_t ;
struct TYPE_12__ {int special; } ;


 int FASTDARK ;
 int MAXBUTTONS ;
 int MAXCEILINGS ;
 int MAXPLATS ;
 int M_CheckParm (char*) ;
 int P_SpawnDoorCloseIn30 (TYPE_1__*) ;
 int P_SpawnDoorRaiseIn5Mins (TYPE_1__*,int) ;
 int P_SpawnFireFlicker (TYPE_1__*) ;
 int P_SpawnGlowingLight (TYPE_1__*) ;
 int P_SpawnLightFlash (TYPE_1__*) ;
 int P_SpawnStrobeFlash (TYPE_1__*,int ,int) ;
 int SLOWDARK ;
 scalar_t__ W_CheckNumForName (char*) ;
 int ** activeceilings ;
 int ** activeplats ;
 int atoi (int ) ;
 int * buttonlist ;
 scalar_t__ deathmatch ;
 int levelTimeCount ;
 int levelTimer ;
 TYPE_3__* lines ;
 TYPE_3__** linespeciallist ;
 int memset (int *,int ,int) ;
 int * myargv ;
 int numlines ;
 size_t numlinespecials ;
 int numsectors ;
 TYPE_1__* sectors ;
 int totalsecret ;

void P_SpawnSpecials (void)
{
    sector_t* sector;
    int i;
    int episode;

    episode = 1;
    if (W_CheckNumForName("texture2") >= 0)
 episode = 2;



    levelTimer = 0;

    i = M_CheckParm("-avg");
    if (i && deathmatch)
    {
 levelTimer = 1;
 levelTimeCount = 20 * 60 * 35;
    }

    i = M_CheckParm("-timer");
    if (i && deathmatch)
    {
 int time;
 time = atoi(myargv[i+1]) * 60 * 35;
 levelTimer = 1;
 levelTimeCount = time;
    }


    sector = sectors;
    for (i=0 ; i<numsectors ; i++, sector++)
    {
 if (!sector->special)
     continue;

 switch (sector->special)
 {
   case 1:

     P_SpawnLightFlash (sector);
     break;

   case 2:

     P_SpawnStrobeFlash(sector,FASTDARK,0);
     break;

   case 3:

     P_SpawnStrobeFlash(sector,SLOWDARK,0);
     break;

   case 4:

     P_SpawnStrobeFlash(sector,FASTDARK,0);
     sector->special = 4;
     break;

   case 8:

     P_SpawnGlowingLight(sector);
     break;
   case 9:

     totalsecret++;
     break;

   case 10:

     P_SpawnDoorCloseIn30 (sector);
     break;

   case 12:

     P_SpawnStrobeFlash (sector, SLOWDARK, 1);
     break;

   case 13:

     P_SpawnStrobeFlash (sector, FASTDARK, 1);
     break;

   case 14:

     P_SpawnDoorRaiseIn5Mins (sector, i);
     break;

   case 17:
     P_SpawnFireFlicker(sector);
     break;
 }
    }



    numlinespecials = 0;
    for (i = 0;i < numlines; i++)
    {
 switch(lines[i].special)
 {
   case 48:

     linespeciallist[numlinespecials] = &lines[i];
     numlinespecials++;
     break;
 }
    }



    for (i = 0;i < MAXCEILINGS;i++)
 activeceilings[i] = ((void*)0);

    for (i = 0;i < MAXPLATS;i++)
 activeplats[i] = ((void*)0);

    for (i = 0;i < MAXBUTTONS;i++)
 memset(&buttonlist[i],0,sizeof(button_t));



}

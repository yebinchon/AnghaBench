
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int patch_t ;
struct TYPE_4__ {int nanims; void** p; } ;
typedef TYPE_1__ anim_t ;
struct TYPE_5__ {int epsd; } ;


 int MAXPLAYERS ;
 int* NUMANIMS ;
 int NUMCMAPS ;
 int NUMMAPS ;
 int PU_CACHE ;
 int PU_STATIC ;
 int V_DrawPatch (int ,int ,int,void*) ;
 void* W_CacheLumpName (char*,int ) ;
 scalar_t__ Z_Malloc (int,int ,int ) ;
 TYPE_1__** anims ;
 void* bg ;
 void** bp ;
 void* bstar ;
 void* colon ;
 scalar_t__ commercial ;
 int deathmatch ;
 void* entering ;
 void* finished ;
 void* frags ;
 scalar_t__ french ;
 scalar_t__ gamemode ;
 void* items ;
 void* killers ;
 void* kills ;
 int ** lnames ;
 scalar_t__ netgame ;
 void** num ;
 void** p ;
 void* par ;
 void* percent ;
 scalar_t__ retail ;
 void* secret ;
 void* sp_secret ;
 void* splat ;
 int sprintf (char*,char*,int,...) ;
 void* star ;
 int strcpy (char*,char*) ;
 void* sucks ;
 void* time ;
 void* total ;
 void* victims ;
 TYPE_2__* wbs ;
 void* wiminus ;
 void** yah ;

void WI_loadData(void)
{
    int i;
    int j;
    char name[9];
    anim_t* a;

    if (gamemode == commercial)
 strcpy(name, "INTERPIC");
    else
 sprintf(name, "WIMAP%d", wbs->epsd);

    if ( gamemode == retail )
    {
      if (wbs->epsd == 3)
 strcpy(name,"INTERPIC");
    }


    bg = W_CacheLumpName(name, PU_CACHE);
    V_DrawPatch(0, 0, 1, bg);
    if (gamemode == commercial)
    {
 NUMCMAPS = 32;
 lnames = (patch_t **) Z_Malloc(sizeof(patch_t*) * NUMCMAPS,
           PU_STATIC, 0);
 for (i=0 ; i<NUMCMAPS ; i++)
 {
     sprintf(name, "CWILV%2.2d", i);
     lnames[i] = W_CacheLumpName(name, PU_STATIC);
 }
    }
    else
    {
 lnames = (patch_t **) Z_Malloc(sizeof(patch_t*) * NUMMAPS,
           PU_STATIC, 0);
 for (i=0 ; i<NUMMAPS ; i++)
 {
     sprintf(name, "WILV%d%d", wbs->epsd, i);
     lnames[i] = W_CacheLumpName(name, PU_STATIC);
 }


 yah[0] = W_CacheLumpName("WIURH0", PU_STATIC);


 yah[1] = W_CacheLumpName("WIURH1", PU_STATIC);


 splat = W_CacheLumpName("WISPLAT", PU_STATIC);

 if (wbs->epsd < 3)
 {
     for (j=0;j<NUMANIMS[wbs->epsd];j++)
     {
  a = &anims[wbs->epsd][j];
  for (i=0;i<a->nanims;i++)
  {

      if (wbs->epsd != 1 || j != 8)
      {

   sprintf(name, "WIA%d%.2d%.2d", wbs->epsd, j, i);
   a->p[i] = W_CacheLumpName(name, PU_STATIC);
      }
      else
      {

   a->p[i] = anims[1][4].p[i];
      }
  }
     }
 }
    }


    wiminus = W_CacheLumpName("WIMINUS", PU_STATIC);

    for (i=0;i<10;i++)
    {

 sprintf(name, "WINUM%d", i);
 num[i] = W_CacheLumpName(name, PU_STATIC);
    }


    percent = W_CacheLumpName("WIPCNT", PU_STATIC);


    finished = W_CacheLumpName("WIF", PU_STATIC);


    entering = W_CacheLumpName("WIENTER", PU_STATIC);


    kills = W_CacheLumpName("WIOSTK", PU_STATIC);


    secret = W_CacheLumpName("WIOSTS", PU_STATIC);


    sp_secret = W_CacheLumpName("WISCRT2", PU_STATIC);


    if (french)
    {

 if (netgame && !deathmatch)
     items = W_CacheLumpName("WIOBJ", PU_STATIC);
   else
     items = W_CacheLumpName("WIOSTI", PU_STATIC);
    } else
 items = W_CacheLumpName("WIOSTI", PU_STATIC);


    frags = W_CacheLumpName("WIFRGS", PU_STATIC);


    colon = W_CacheLumpName("WICOLON", PU_STATIC);


    time = W_CacheLumpName("WITIME", PU_STATIC);


    sucks = W_CacheLumpName("WISUCKS", PU_STATIC);


    par = W_CacheLumpName("WIPAR", PU_STATIC);


    killers = W_CacheLumpName("WIKILRS", PU_STATIC);


    victims = W_CacheLumpName("WIVCTMS", PU_STATIC);


    total = W_CacheLumpName("WIMSTT", PU_STATIC);


    star = W_CacheLumpName("STFST01", PU_STATIC);


    bstar = W_CacheLumpName("STFDEAD0", PU_STATIC);

    for (i=0 ; i<MAXPLAYERS ; i++)
    {

 sprintf(name, "STPB%d", i);
 p[i] = W_CacheLumpName(name, PU_STATIC);


 sprintf(name, "WIBP%d", i+1);
 bp[i] = W_CacheLumpName(name, PU_STATIC);
    }

}

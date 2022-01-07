
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int skill_t ;
struct TYPE_4__ {int viewz; int * mo; scalar_t__ itemcount; scalar_t__ secretcount; scalar_t__ killcount; } ;
struct TYPE_3__ {int partime; scalar_t__ maxfrags; } ;


 int G_DeathMatchSpawnPlayer (int) ;
 scalar_t__ MAXINT ;
 int MAXPLAYERS ;
 scalar_t__ ML_BLOCKMAP ;
 scalar_t__ ML_LINEDEFS ;
 scalar_t__ ML_NODES ;
 scalar_t__ ML_REJECT ;
 scalar_t__ ML_SECTORS ;
 scalar_t__ ML_SEGS ;
 scalar_t__ ML_SIDEDEFS ;
 scalar_t__ ML_SSECTORS ;
 scalar_t__ ML_THINGS ;
 scalar_t__ ML_VERTEXES ;
 int PU_LEVEL ;
 scalar_t__ PU_PURGELEVEL ;
 int P_GroupLines () ;
 int P_InitThinkers () ;
 int P_LoadBlockMap (scalar_t__) ;
 int P_LoadLineDefs (scalar_t__) ;
 int P_LoadNodes (scalar_t__) ;
 int P_LoadSectors (scalar_t__) ;
 int P_LoadSegs (scalar_t__) ;
 int P_LoadSideDefs (scalar_t__) ;
 int P_LoadSubsectors (scalar_t__) ;
 int P_LoadThings (scalar_t__) ;
 int P_LoadVertexes (scalar_t__) ;
 int P_SpawnSpecials () ;
 int R_PrecacheLevel () ;
 int S_Start () ;
 int W_CacheLumpNum (scalar_t__,int ) ;
 int W_GetNumForName (char*) ;
 int W_Reload () ;
 int Z_FileDumpHeap (scalar_t__) ;
 int Z_FreeTags (int ,scalar_t__) ;
 scalar_t__ bodyqueslot ;
 scalar_t__ commercial ;
 size_t consoleplayer ;
 scalar_t__ deathmatch ;
 int deathmatch_p ;
 int deathmatchstarts ;
 scalar_t__ debugfile ;
 scalar_t__ gamemode ;
 scalar_t__ iquehead ;
 scalar_t__ iquetail ;
 scalar_t__ leveltime ;
 scalar_t__* playeringame ;
 TYPE_2__* players ;
 scalar_t__ precache ;
 int rejectmatrix ;
 int sprintf (char*,char*,int) ;
 scalar_t__ totalitems ;
 scalar_t__ totalkills ;
 scalar_t__ totalsecret ;
 TYPE_1__ wminfo ;

void
P_SetupLevel
( int episode,
  int map,
  int playermask,
  skill_t skill)
{
    int i;
    char lumpname[9];
    int lumpnum;

    totalkills = totalitems = totalsecret = wminfo.maxfrags = 0;
    wminfo.partime = 180;
    for (i=0 ; i<MAXPLAYERS ; i++)
    {
 players[i].killcount = players[i].secretcount
     = players[i].itemcount = 0;
    }



    players[consoleplayer].viewz = 1;


    S_Start ();
 Z_FreeTags (PU_LEVEL, PU_PURGELEVEL-1);



    P_InitThinkers ();


    W_Reload ();


    if ( gamemode == commercial)
    {
 if (map<10)
     sprintf (lumpname,"map0%i", map);
 else
     sprintf (lumpname,"map%i", map);
    }
    else
    {
 lumpname[0] = 'E';
 lumpname[1] = '0' + episode;
 lumpname[2] = 'M';
 lumpname[3] = '0' + map;
 lumpname[4] = 0;
    }

    lumpnum = W_GetNumForName (lumpname);

    leveltime = 0;


    P_LoadBlockMap (lumpnum+ML_BLOCKMAP);
    P_LoadVertexes (lumpnum+ML_VERTEXES);
    P_LoadSectors (lumpnum+ML_SECTORS);
    P_LoadSideDefs (lumpnum+ML_SIDEDEFS);

    P_LoadLineDefs (lumpnum+ML_LINEDEFS);
    P_LoadSubsectors (lumpnum+ML_SSECTORS);
    P_LoadNodes (lumpnum+ML_NODES);
    P_LoadSegs (lumpnum+ML_SEGS);

    rejectmatrix = W_CacheLumpNum (lumpnum+ML_REJECT,PU_LEVEL);
    P_GroupLines ();

    bodyqueslot = 0;
    deathmatch_p = deathmatchstarts;
    P_LoadThings (lumpnum+ML_THINGS);


    if (deathmatch)
    {
 for (i=0 ; i<MAXPLAYERS ; i++)
     if (playeringame[i])
     {
  players[i].mo = ((void*)0);
  G_DeathMatchSpawnPlayer (i);
     }

    }


    iquehead = iquetail = 0;


    P_SpawnSpecials ();





    if (precache)
 R_PrecacheLevel ();



}

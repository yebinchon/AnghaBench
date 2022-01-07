
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nanims; int * p; } ;
struct TYPE_3__ {int epsd; } ;


 int MAXPLAYERS ;
 int* NUMANIMS ;
 int NUMCMAPS ;
 int NUMMAPS ;
 int PU_CACHE ;
 int Z_ChangeTag (int ,int ) ;
 int Z_Free (int *) ;
 TYPE_2__** anims ;
 int * bp ;
 int colon ;
 scalar_t__ commercial ;
 int entering ;
 int finished ;
 int frags ;
 scalar_t__ gamemode ;
 int items ;
 int killers ;
 int kills ;
 int * lnames ;
 int * num ;
 int * p ;
 int par ;
 int percent ;
 int secret ;
 int sp_secret ;
 int splat ;
 int sucks ;
 int time ;
 int total ;
 int victims ;
 TYPE_1__* wbs ;
 int wiminus ;
 int * yah ;

void WI_unloadData(void)
{
    int i;
    int j;

    Z_ChangeTag(wiminus, PU_CACHE);

    for (i=0 ; i<10 ; i++)
 Z_ChangeTag(num[i], PU_CACHE);

    if (gamemode == commercial)
    {
   for (i=0 ; i<NUMCMAPS ; i++)
     Z_ChangeTag(lnames[i], PU_CACHE);
    }
    else
    {
 Z_ChangeTag(yah[0], PU_CACHE);
 Z_ChangeTag(yah[1], PU_CACHE);

 Z_ChangeTag(splat, PU_CACHE);

 for (i=0 ; i<NUMMAPS ; i++)
     Z_ChangeTag(lnames[i], PU_CACHE);

 if (wbs->epsd < 3)
 {
     for (j=0;j<NUMANIMS[wbs->epsd];j++)
     {
  if (wbs->epsd != 1 || j != 8)
      for (i=0;i<anims[wbs->epsd][j].nanims;i++)
   Z_ChangeTag(anims[wbs->epsd][j].p[i], PU_CACHE);
     }
 }
    }

    Z_Free(lnames);

    Z_ChangeTag(percent, PU_CACHE);
    Z_ChangeTag(colon, PU_CACHE);
    Z_ChangeTag(finished, PU_CACHE);
    Z_ChangeTag(entering, PU_CACHE);
    Z_ChangeTag(kills, PU_CACHE);
    Z_ChangeTag(secret, PU_CACHE);
    Z_ChangeTag(sp_secret, PU_CACHE);
    Z_ChangeTag(items, PU_CACHE);
    Z_ChangeTag(frags, PU_CACHE);
    Z_ChangeTag(time, PU_CACHE);
    Z_ChangeTag(sucks, PU_CACHE);
    Z_ChangeTag(par, PU_CACHE);

    Z_ChangeTag(victims, PU_CACHE);
    Z_ChangeTag(killers, PU_CACHE);
    Z_ChangeTag(total, PU_CACHE);



    for (i=0 ; i<MAXPLAYERS ; i++)
 Z_ChangeTag(p[i], PU_CACHE);

    for (i=0 ; i<MAXPLAYERS ; i++)
 Z_ChangeTag(bp[i], PU_CACHE);
}

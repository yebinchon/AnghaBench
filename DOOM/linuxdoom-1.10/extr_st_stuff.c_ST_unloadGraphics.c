
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUMCARDS ;
 int PU_CACHE ;
 int ST_NUMFACES ;
 int Z_ChangeTag (int ,int ) ;
 int ** arms ;
 int armsbg ;
 int faceback ;
 int * faces ;
 int * keys ;
 int sbar ;
 int * shortnum ;
 int * tallnum ;
 int tallpercent ;

void ST_unloadGraphics(void)
{

    int i;


    for (i=0;i<10;i++)
    {
 Z_ChangeTag(tallnum[i], PU_CACHE);
 Z_ChangeTag(shortnum[i], PU_CACHE);
    }

    Z_ChangeTag(tallpercent, PU_CACHE);


    Z_ChangeTag(armsbg, PU_CACHE);


    for (i=0;i<6;i++)
 Z_ChangeTag(arms[i][0], PU_CACHE);


    for (i=0;i<NUMCARDS;i++)
 Z_ChangeTag(keys[i], PU_CACHE);

    Z_ChangeTag(sbar, PU_CACHE);
    Z_ChangeTag(faceback, PU_CACHE);

    for (i=0;i<ST_NUMFACES;i++)
 Z_ChangeTag(faces[i], PU_CACHE);





}

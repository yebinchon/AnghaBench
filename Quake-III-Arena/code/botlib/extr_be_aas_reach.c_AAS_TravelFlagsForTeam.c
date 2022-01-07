
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AAS_IntForBSPEpairKey (int,char*,int*) ;
 int TRAVELFLAG_NOTTEAM1 ;
 int TRAVELFLAG_NOTTEAM2 ;

int AAS_TravelFlagsForTeam(int ent)
{
 int notteam;

 if (!AAS_IntForBSPEpairKey(ent, "bot_notteam", &notteam))
  return 0;
 if (notteam == 1)
  return TRAVELFLAG_NOTTEAM1;
 if (notteam == 2)
  return TRAVELFLAG_NOTTEAM2;
 return 0;
}

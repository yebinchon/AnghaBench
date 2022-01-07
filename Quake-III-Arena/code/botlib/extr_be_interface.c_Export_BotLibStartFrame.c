
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AAS_StartFrame (float) ;
 int BLERR_LIBRARYNOTSETUP ;
 int BotLibSetup (char*) ;

int Export_BotLibStartFrame(float time)
{
 if (!BotLibSetup("BotStartFrame")) return BLERR_LIBRARYNOTSETUP;
 return AAS_StartFrame(time);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bot_entitystate_t ;


 int AAS_UpdateEntity (int,int *) ;
 int BLERR_INVALIDENTITYNUMBER ;
 int BLERR_LIBRARYNOTSETUP ;
 int BotLibSetup (char*) ;
 int ValidEntityNumber (int,char*) ;

int Export_BotLibUpdateEntity(int ent, bot_entitystate_t *state)
{
 if (!BotLibSetup("BotUpdateEntity")) return BLERR_LIBRARYNOTSETUP;
 if (!ValidEntityNumber(ent, "BotUpdateEntity")) return BLERR_INVALIDENTITYNUMBER;

 return AAS_UpdateEntity(ent, state);
}

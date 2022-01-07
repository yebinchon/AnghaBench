
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aas_entityinfo_t ;


 int trap_AAS_EntityInfo (int,int *) ;

void BotEntityInfo(int entnum, aas_entityinfo_t *info) {
 trap_AAS_EntityInfo(entnum, info);
}

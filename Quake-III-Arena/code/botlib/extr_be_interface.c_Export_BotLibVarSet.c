
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLERR_NOERROR ;
 int LibVarSet (char*,char*) ;

int Export_BotLibVarSet(char *var_name, char *value)
{
 LibVarSet(var_name, value);
 return BLERR_NOERROR;
}

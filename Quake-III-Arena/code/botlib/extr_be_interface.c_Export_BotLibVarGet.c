
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLERR_NOERROR ;
 char* LibVarGetString (char*) ;
 int strncpy (char*,char*,int) ;

int Export_BotLibVarGet(char *var_name, char *value, int size)
{
 char *varvalue;

 varvalue = LibVarGetString(var_name);
 strncpy(value, varvalue, size-1);
 value[size-1] = '\0';
 return BLERR_NOERROR;
}

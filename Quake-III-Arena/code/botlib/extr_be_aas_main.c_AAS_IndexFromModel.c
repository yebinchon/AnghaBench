
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * configstrings; } ;


 int AAS_IndexFromString (char*,int *,int ,char*) ;
 size_t CS_MODELS ;
 int MAX_MODELS ;
 TYPE_1__ aasworld ;

int AAS_IndexFromModel(char *modelname)
{
 return AAS_IndexFromString("IndexFromModel", &aasworld.configstrings[CS_MODELS], MAX_MODELS, modelname);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * configstrings; } ;


 char* AAS_StringFromIndex (char*,int *,int ,int) ;
 size_t CS_MODELS ;
 int MAX_MODELS ;
 TYPE_1__ aasworld ;

char *AAS_ModelFromIndex(int index)
{
 return AAS_StringFromIndex("ModelFromIndex", &aasworld.configstrings[CS_MODELS], MAX_MODELS, index);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 int numtextures ;
 int strncasecmp (int ,char*,int) ;
 TYPE_1__** textures ;

int R_CheckTextureNumForName (char *name)
{
    int i;


    if (name[0] == '-')
 return 0;

    for (i=0 ; i<numtextures ; i++)
 if (!strncasecmp (textures[i]->name, name, 8) )
     return i;

    return -1;
}

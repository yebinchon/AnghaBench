
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_Error (char*,char*) ;
 int R_CheckTextureNumForName (char*) ;

int R_TextureNumForName (char* name)
{
    int i;

    i = R_CheckTextureNumForName (name);

    if (i==-1)
    {
 I_Error ("R_TextureNumForName: %s not found",
   name);
    }
    return i;
}

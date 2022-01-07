
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_Error (char*,char*) ;
 int W_CheckNumForName (char*) ;

int W_GetNumForName (char* name)
{
    int i;

    i = W_CheckNumForName (name);

    if (i == -1)
      I_Error ("W_GetNumForName: %s not found!", name);

    return i;
}

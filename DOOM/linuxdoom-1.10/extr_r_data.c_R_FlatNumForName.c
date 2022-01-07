
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_Error (char*,char*) ;
 int W_CheckNumForName (char*) ;
 int firstflat ;
 int memcpy (char*,char*,int) ;

int R_FlatNumForName (char* name)
{
    int i;
    char namet[9];

    i = W_CheckNumForName (name);

    if (i == -1)
    {
 namet[8] = 0;
 memcpy (namet, name,8);
 I_Error ("R_FlatNumForName: %s not found",namet);
    }
    return i - firstflat;
}

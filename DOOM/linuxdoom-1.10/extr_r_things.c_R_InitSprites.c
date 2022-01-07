
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_InitSpriteDefs (char**) ;
 int SCREENWIDTH ;
 int* negonearray ;

void R_InitSprites (char** namelist)
{
    int i;

    for (i=0 ; i<SCREENWIDTH ; i++)
    {
 negonearray[i] = -1;
    }

    R_InitSpriteDefs (namelist);
}

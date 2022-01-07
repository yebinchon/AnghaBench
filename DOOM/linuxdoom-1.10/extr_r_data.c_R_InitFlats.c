
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PU_STATIC ;
 int W_GetNumForName (char*) ;
 int* Z_Malloc (int,int ,int ) ;
 int firstflat ;
 int* flattranslation ;
 int lastflat ;
 int numflats ;

void R_InitFlats (void)
{
    int i;

    firstflat = W_GetNumForName ("F_START") + 1;
    lastflat = W_GetNumForName ("F_END") - 1;
    numflats = lastflat - firstflat + 1;


    flattranslation = Z_Malloc ((numflats+1)*4, PU_STATIC, 0);

    for (i=0 ; i<numflats ; i++)
 flattranslation[i] = i;
}

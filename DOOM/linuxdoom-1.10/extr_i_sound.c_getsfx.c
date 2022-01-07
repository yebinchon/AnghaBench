
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PU_STATIC ;
 int SAMPLECOUNT ;
 scalar_t__ W_CacheLumpNum (int,int ) ;
 int W_CheckNumForName (char*) ;
 int W_GetNumForName (char*) ;
 int W_LumpLength (int) ;
 int Z_Free (unsigned char*) ;
 scalar_t__ Z_Malloc (int,int ,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int sprintf (char*,char*,char*) ;

void*
getsfx
( char* sfxname,
  int* len )
{
    unsigned char* sfx;
    unsigned char* paddedsfx;
    int i;
    int size;
    int paddedsize;
    char name[20];
    int sfxlump;




    sprintf(name, "ds%s", sfxname);
    if ( W_CheckNumForName(name) == -1 )
      sfxlump = W_GetNumForName("dspistol");
    else
      sfxlump = W_GetNumForName(name);

    size = W_LumpLength( sfxlump );







    sfx = (unsigned char*)W_CacheLumpNum( sfxlump, PU_STATIC );



    paddedsize = ((size-8 + (SAMPLECOUNT-1)) / SAMPLECOUNT) * SAMPLECOUNT;


    paddedsfx = (unsigned char*)Z_Malloc( paddedsize+8, PU_STATIC, 0 );





    memcpy( paddedsfx, sfx, size );
    for (i=size ; i<paddedsize+8 ; i++)
        paddedsfx[i] = 128;


    Z_Free( sfx );


    *len = paddedsize;


    return (void *) (paddedsfx + 8);
}

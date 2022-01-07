
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SAMPLECOUNT ;
 scalar_t__ loadlump (char*,int*) ;
 scalar_t__ realloc (unsigned char*,int) ;
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

    sprintf(name, "ds%s", sfxname);

    sfx = (unsigned char *) loadlump(name, &size);


    paddedsize = ((size-8 + (SAMPLECOUNT-1)) / SAMPLECOUNT) * SAMPLECOUNT;
    paddedsfx = (unsigned char *) realloc(sfx, paddedsize+8);
    for (i=size ; i<paddedsize+8 ; i++)
 paddedsfx[i] = 128;

    *len = paddedsize;
    return (void *) (paddedsfx + 8);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_Error (char*) ;
 int W_AddFile (char*) ;
 void* lumpcache ;
 void* lumpinfo ;
 void* malloc (int) ;
 int memset (void*,int ,int) ;
 int numlumps ;

void W_InitMultipleFiles (char** filenames)
{
    int size;


    numlumps = 0;


    lumpinfo = malloc(1);

    for ( ; *filenames ; filenames++)
 W_AddFile (*filenames);

    if (!numlumps)
 I_Error ("W_InitFiles: no files found");


    size = numlumps * sizeof(*lumpcache);
    lumpcache = malloc (size);

    if (!lumpcache)
 I_Error ("Couldn't allocate lumpcache");

    memset (lumpcache,0, size);
}

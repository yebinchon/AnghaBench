
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int W_InitMultipleFiles (char**) ;

void W_InitFile (char* filename)
{
    char* names[2];

    names[0] = filename;
    names[1] = ((void*)0);
    W_InitMultipleFiles (names);
}

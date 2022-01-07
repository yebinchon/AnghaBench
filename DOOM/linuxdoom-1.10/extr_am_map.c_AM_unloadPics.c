
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PU_CACHE ;
 int Z_ChangeTag (int ,int ) ;
 int * marknums ;

void AM_unloadPics(void)
{
    int i;

    for (i=0;i<10;i++)
 Z_ChangeTag(marknums[i], PU_CACHE);

}

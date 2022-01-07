
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PU_STATIC ;
 int W_CacheLumpName (char*,int ) ;
 int * marknums ;
 int sprintf (char*,char*,int) ;

void AM_loadPics(void)
{
    int i;
    char namebuf[9];

    for (i=0;i<10;i++)
    {
 sprintf(namebuf, "AMMNUM%d", i);
 marknums[i] = W_CacheLumpName(namebuf, PU_STATIC);
    }

}

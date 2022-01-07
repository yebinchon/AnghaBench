
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_CheckParm (char*) ;
 int PU_STATIC ;
 scalar_t__ Z_Malloc (int,int ,int *) ;
 int atoi (int ) ;
 scalar_t__ demobuffer ;
 scalar_t__ demoend ;
 int demoname ;
 int demorecording ;
 int myargc ;
 int * myargv ;
 int strcat (int ,char*) ;
 int strcpy (int ,char*) ;
 int usergame ;

void G_RecordDemo (char* name)
{
    int i;
    int maxsize;

    usergame = 0;
    strcpy (demoname, name);
    strcat (demoname, ".lmp");
    maxsize = 0x20000;
    i = M_CheckParm ("-maxdemo");
    if (i && i<myargc-1)
 maxsize = atoi(myargv[i+1])*1024;
    demobuffer = Z_Malloc (maxsize,PU_STATIC,((void*)0));
    demoend = demobuffer + maxsize;

    demorecording = 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* M_CheckParm (char*) ;
 char* defdemoname ;
 int ga_playdemo ;
 int gameaction ;
 void* noblit ;
 void* nodrawers ;
 int singletics ;
 int timingdemo ;

void G_TimeDemo (char* name)
{
    nodrawers = M_CheckParm ("-nodraw");
    noblit = M_CheckParm ("-noblit");
    timingdemo = 1;
    singletics = 1;

    defdemoname = name;
    gameaction = ga_playdemo;
}

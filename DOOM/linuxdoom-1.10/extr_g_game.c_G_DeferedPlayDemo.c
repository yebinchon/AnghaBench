
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* defdemoname ;
 int ga_playdemo ;
 int gameaction ;

void G_DeferedPlayDemo (char* name)
{
    defdemoname = name;
    gameaction = ga_playdemo;
}

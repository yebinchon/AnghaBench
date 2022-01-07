
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next; } ;


 int GS_LEVEL ;
 int G_DoLoadLevel () ;
 int ga_nothing ;
 int gameaction ;
 scalar_t__ gamemap ;
 int gamestate ;
 int viewactive ;
 TYPE_1__ wminfo ;

void G_DoWorldDone (void)
{
    gamestate = GS_LEVEL;
    gamemap = wminfo.next+1;
    G_DoLoadLevel ();
    gameaction = ga_nothing;
    viewactive = 1;
}

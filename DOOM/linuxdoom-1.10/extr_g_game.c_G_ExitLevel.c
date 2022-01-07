
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ga_completed ;
 int gameaction ;
 int secretexit ;

void G_ExitLevel (void)
{
    secretexit = 0;
    gameaction = ga_completed;
}

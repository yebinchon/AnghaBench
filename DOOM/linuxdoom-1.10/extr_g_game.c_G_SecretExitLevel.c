
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ W_CheckNumForName (char*) ;
 scalar_t__ commercial ;
 int ga_completed ;
 int gameaction ;
 scalar_t__ gamemode ;
 int secretexit ;

void G_SecretExitLevel (void)
{

    if ( (gamemode == commercial)
      && (W_CheckNumForName("map31")<0))
 secretexit = 0;
    else
 secretexit = 1;
    gameaction = ga_completed;
}

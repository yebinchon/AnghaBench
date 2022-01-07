
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AM_LevelInit () ;
 int AM_Stop () ;
 int AM_initVariables () ;
 int AM_loadPics () ;
 int gameepisode ;
 int gamemap ;
 int stopped ;

void AM_Start (void)
{
    static int lastlevel = -1, lastepisode = -1;

    if (!stopped) AM_Stop();
    stopped = 0;
    if (lastlevel != gamemap || lastepisode != gameepisode)
    {
 AM_LevelInit();
 lastlevel = gamemap;
 lastepisode = gameepisode;
    }
    AM_initVariables();
    AM_loadPics();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double Atari800_FPS_NTSC ;
 double Atari800_FPS_PAL ;
 scalar_t__ Atari800_TV_PAL ;
 scalar_t__ Atari800_auto_frameskip ;
 double Atari800_refresh_rate ;
 scalar_t__ Atari800_tv_mode ;
 double Sound_AdjustSpeed () ;
 int UI_is_active ;
 int Util_sleep (double) ;
 double Util_time () ;
 int autoframeskip (double,double) ;

void Atari800_Sync(void)
{
 static double lasttime = 0;
 double deltatime = 1.0 / ((Atari800_tv_mode == Atari800_TV_PAL) ? Atari800_FPS_PAL : Atari800_FPS_NTSC);
 double curtime;
 lasttime += deltatime;
 curtime = Util_time();
 if (Atari800_auto_frameskip)
  autoframeskip(curtime, lasttime);
 Util_sleep(lasttime - curtime);
 curtime = Util_time();

 if ((lasttime + deltatime) < curtime)
  lasttime = curtime;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAHW_SMS ;
 int PicoAHW ;
 int PicoDrawSync (int,int ) ;
 int PicoFrameDrawOnlyMS () ;
 int PicoFrameStart () ;

void PicoFrameDrawOnly(void)
{
  if (!(PicoAHW & PAHW_SMS)) {
    PicoFrameStart();
    PicoDrawSync(223, 0);
  } else {
    PicoFrameDrawOnlyMS();
  }
}

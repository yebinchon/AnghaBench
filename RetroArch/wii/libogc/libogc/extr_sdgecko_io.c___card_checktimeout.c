
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t s32 ;


 int CARDIO_OP_TIMEDOUT ;
 int TB_TIMER_CLOCK ;
 int * _ioError ;
 int gettick () ;

__attribute__((used)) static u32 __card_checktimeout(s32 drv_no,u32 startT,u32 timeout)
{
 u32 endT,diff;
 u32 msec;

 endT = gettick();
 if(endT<startT) {
  diff = (endT+(-1-startT))+1;
 } else
  diff = (endT-startT);

 msec = (diff/TB_TIMER_CLOCK);
 if(msec<=timeout) return 0;

 _ioError[drv_no] |= CARDIO_OP_TIMEDOUT;
 return 1;
}

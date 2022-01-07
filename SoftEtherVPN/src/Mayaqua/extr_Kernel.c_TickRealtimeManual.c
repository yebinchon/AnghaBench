
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;
typedef int UINT ;


 int Lock (int ) ;
 scalar_t__ TickGetRealtimeTickValue64 () ;
 int Unlock (int ) ;
 scalar_t__ last_manual_tick ;
 scalar_t__ manual_tick_add_value ;
 int tick_manual_lock ;

UINT TickRealtimeManual()
{
 UINT64 ret;
 Lock(tick_manual_lock);
 {
  ret = TickGetRealtimeTickValue64();

  if (last_manual_tick != 0 && (last_manual_tick > ret))
  {
   manual_tick_add_value += (last_manual_tick - ret);
  }

  last_manual_tick = ret;
 }
 Unlock(tick_manual_lock);

 return (UINT)(ret + manual_tick_add_value);
}

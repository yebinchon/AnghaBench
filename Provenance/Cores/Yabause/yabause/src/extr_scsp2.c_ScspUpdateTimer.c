
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int SCSP_INTTARGET_BOTH ;
 int ScspRaiseInterrupt (int,int ) ;
 scalar_t__ UNLIKELY (int) ;

__attribute__((used)) static void ScspUpdateTimer(u32 samples, u16 *timer_ptr, u8 timer_scale,
                            int interrupt)
{
   u32 timer_new = *timer_ptr + (samples << (8 - timer_scale));
   if (UNLIKELY(timer_new >= 0xFF00))
   {
      ScspRaiseInterrupt(interrupt, SCSP_INTTARGET_BOTH);
      timer_new -= 0xFF00;
   }
   *timer_ptr = timer_new;
}

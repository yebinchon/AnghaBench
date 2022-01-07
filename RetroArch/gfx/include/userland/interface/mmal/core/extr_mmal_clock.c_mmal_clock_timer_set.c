
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int VCOS_UNSIGNED ;
typedef int RTOS_TIMER_TIME_T ;
typedef int MMAL_TIMER_T ;


 int rtos_timer_set (int *,int ) ;
 int vcos_timer_set (int *,int ) ;

__attribute__((used)) static inline void mmal_clock_timer_set(MMAL_TIMER_T *timer, int64_t delay_us)
{




   vcos_timer_set(timer, (VCOS_UNSIGNED)(delay_us / 1000));

}

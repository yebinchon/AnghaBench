
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_TIMER_T ;


 int rtos_timer_cancel (int *) ;
 int vcos_timer_cancel (int *) ;

__attribute__((used)) static inline void mmal_clock_timer_cancel(MMAL_TIMER_T *timer)
{



   vcos_timer_cancel(timer);

}

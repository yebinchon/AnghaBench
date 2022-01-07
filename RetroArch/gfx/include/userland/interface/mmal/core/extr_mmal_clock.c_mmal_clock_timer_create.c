
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_TIMER_T ;
typedef int MMAL_BOOL_T ;


 scalar_t__ VCOS_SUCCESS ;
 int mmal_clock_timer_cb ;
 scalar_t__ rtos_timer_init (int *,int ,void*) ;
 scalar_t__ vcos_timer_create (int *,char*,int ,void*) ;

__attribute__((used)) static inline MMAL_BOOL_T mmal_clock_timer_create(MMAL_TIMER_T *timer, void *ctx)
{



   return (vcos_timer_create(timer, "mmal-clock timer", mmal_clock_timer_cb, ctx) == VCOS_SUCCESS);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_CLOCK_PRIVATE_T ;


 int mmal_clock_wake_thread (int *) ;

__attribute__((used)) static void mmal_clock_timer_cb(void *ctx)
{

   mmal_clock_wake_thread((MMAL_CLOCK_PRIVATE_T*)ctx);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int frame_context ;


 int __lwp_wd_tickle_ticks () ;

void c_decrementer_handler(frame_context *ctx)
{
 __lwp_wd_tickle_ticks();
}

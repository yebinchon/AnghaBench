
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int AVIOInterruptCB ;


 int AVERROR (int ) ;
 int AVERROR_EXIT ;
 int ETIMEDOUT ;
 int FFMIN (scalar_t__,int) ;
 int POLLING_TIME ;
 scalar_t__ av_gettime_relative () ;
 int av_usleep (int ) ;
 scalar_t__ ff_check_interrupt (int *) ;

int ff_network_sleep_interruptible(int64_t timeout, AVIOInterruptCB *int_cb)
{
    int64_t wait_start = av_gettime_relative();

    while (1) {
        int64_t time_left;

        if (ff_check_interrupt(int_cb))
            return AVERROR_EXIT;

        time_left = timeout - (av_gettime_relative() - wait_start);
        if (time_left <= 0)
            return AVERROR(ETIMEDOUT);

        av_usleep(FFMIN(time_left, POLLING_TIME * 1000));
    }
}

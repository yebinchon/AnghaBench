
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int URLContext ;
typedef int AVIOInterruptCB ;


 int AVERROR (int ) ;
 int AVERROR_EXIT ;
 int EAGAIN ;
 int ETIMEDOUT ;
 scalar_t__ av_gettime_relative () ;
 scalar_t__ ff_check_interrupt (int *) ;
 int zmq_proto_wait (int *,void*,int) ;

__attribute__((used)) static int zmq_proto_wait_timeout(URLContext *h, void *socket, int write, int64_t timeout, AVIOInterruptCB *int_cb)
{
    int ret;
    int64_t wait_start = 0;

    while (1) {
        if (ff_check_interrupt(int_cb))
            return AVERROR_EXIT;
        ret = zmq_proto_wait(h, socket, write);
        if (ret != AVERROR(EAGAIN))
            return ret;
        if (timeout > 0) {
            if (!wait_start)
                wait_start = av_gettime_relative();
            else if (av_gettime_relative() - wait_start > timeout)
                return AVERROR(ETIMEDOUT);
        }
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* socket; int events; int revents; int fd; } ;
typedef TYPE_1__ zmq_pollitem_t ;
typedef int URLContext ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int POLLING_TIME ;
 int ZMQ_POLLIN ;
 int ZMQ_POLLOUT ;
 int ZMQ_STRERROR ;
 int av_log (int *,int ,char*,int ) ;
 int zmq_poll (TYPE_1__*,int,int ) ;

__attribute__((used)) static int zmq_proto_wait(URLContext *h, void *socket, int write)
{
    int ret;
    int ev = write ? ZMQ_POLLOUT : ZMQ_POLLIN;
    zmq_pollitem_t items = { .socket = socket, .fd = 0, .events = ev, .revents = 0 };
    ret = zmq_poll(&items, 1, POLLING_TIME);
    if (ret == -1) {
        av_log(h, AV_LOG_ERROR, "Error occured during zmq_poll(): %s\n", ZMQ_STRERROR);
        return AVERROR_EXTERNAL;
    }
    return items.revents & ev ? 0 : AVERROR(EAGAIN);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pkt_size_overflow; int socket; } ;
typedef TYPE_1__ ZMQContext ;
struct TYPE_7__ {int interrupt_callback; int rw_timeout; TYPE_1__* priv_data; } ;
typedef TYPE_2__ URLContext ;


 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int FFMAX (int ,int) ;
 int ZMQ_STRERROR ;
 int av_log (TYPE_2__*,int ,char*,int ) ;
 int zmq_proto_wait_timeout (TYPE_2__*,int ,int ,int ,int *) ;
 int zmq_recv (int ,unsigned char*,int,int ) ;

__attribute__((used)) static int zmq_proto_read(URLContext *h, unsigned char *buf, int size)
{
    int ret;
    ZMQContext *s = h->priv_data;

    ret = zmq_proto_wait_timeout(h, s->socket, 0, h->rw_timeout, &h->interrupt_callback);
    if (ret)
        return ret;
    ret = zmq_recv(s->socket, buf, size, 0);
    if (ret == -1) {
        av_log(h, AV_LOG_ERROR, "Error occured during zmq_recv(): %s\n", ZMQ_STRERROR);
        return AVERROR_EXTERNAL;
    }
    if (ret > size) {
        s->pkt_size_overflow = FFMAX(s->pkt_size_overflow, ret);
        av_log(h, AV_LOG_WARNING, "Message exceeds available space in the buffer. Message will be truncated. Setting -pkt_size %d may resolve the issue.\n", s->pkt_size_overflow);
        ret = size;
    }
    return ret;
}

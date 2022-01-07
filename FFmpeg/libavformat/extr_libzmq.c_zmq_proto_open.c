
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pkt_size; int context; void* socket; scalar_t__ pkt_size_overflow; } ;
typedef TYPE_1__ ZMQContext ;
struct TYPE_6__ {int is_streamed; scalar_t__ max_packet_size; int flags; TYPE_1__* priv_data; } ;
typedef TYPE_2__ URLContext ;


 int AVERROR_EXTERNAL ;
 int AVIO_FLAG_READ ;
 int AVIO_FLAG_WRITE ;
 int AV_LOG_ERROR ;
 int ZMQ_PUB ;
 int ZMQ_STRERROR ;
 int ZMQ_SUB ;
 int ZMQ_SUBSCRIBE ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int av_strstart (char const*,char*,char const**) ;
 int zmq_bind (void*,char const*) ;
 int zmq_close (void*) ;
 int zmq_connect (void*,char const*) ;
 int zmq_ctx_new () ;
 int zmq_ctx_term (int ) ;
 int zmq_setsockopt (void*,int ,char*,int ) ;
 void* zmq_socket (int ,int ) ;

__attribute__((used)) static int zmq_proto_open(URLContext *h, const char *uri, int flags)
{
    int ret;
    ZMQContext *s = h->priv_data;
    s->pkt_size_overflow = 0;
    h->is_streamed = 1;

    if (s->pkt_size > 0)
        h->max_packet_size = s->pkt_size;

    s->context = zmq_ctx_new();
    if (!s->context) {

        av_log(h, AV_LOG_ERROR, "Error occured during zmq_ctx_new()\n");
        return AVERROR_EXTERNAL;
    }

    av_strstart(uri, "zmq:", &uri);


    if (h->flags & AVIO_FLAG_WRITE) {
        s->socket = zmq_socket(s->context, ZMQ_PUB);
        if (!s->socket) {
            av_log(h, AV_LOG_ERROR, "Error occured during zmq_socket(): %s\n", ZMQ_STRERROR);
            zmq_ctx_term(s->context);
            return AVERROR_EXTERNAL;
        }

        ret = zmq_bind(s->socket, uri);
        if (ret == -1) {
            av_log(h, AV_LOG_ERROR, "Error occured during zmq_bind(): %s\n", ZMQ_STRERROR);
            zmq_close(s->socket);
            zmq_ctx_term(s->context);
            return AVERROR_EXTERNAL;
        }
    }


    if (h->flags & AVIO_FLAG_READ) {
        s->socket = zmq_socket(s->context, ZMQ_SUB);
        if (!s->socket) {
            av_log(h, AV_LOG_ERROR, "Error occured during zmq_socket(): %s\n", ZMQ_STRERROR);
            zmq_ctx_term(s->context);
            return AVERROR_EXTERNAL;
        }

        zmq_setsockopt(s->socket, ZMQ_SUBSCRIBE, "", 0);
        ret = zmq_connect(s->socket, uri);
        if (ret == -1) {
            av_log(h, AV_LOG_ERROR, "Error occured during zmq_connect(): %s\n", ZMQ_STRERROR);
            zmq_close(s->socket);
            zmq_ctx_term(s->context);
            return AVERROR_EXTERNAL;
        }
    }
    return 0;
}

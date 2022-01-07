
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zmq_msg_t ;
struct TYPE_5__ {int responder; } ;
typedef TYPE_1__ ZMQContext ;
struct TYPE_6__ {TYPE_1__* priv; } ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_WARNING ;
 scalar_t__ EAGAIN ;
 int ENOMEM ;
 int ZMQ_DONTWAIT ;
 int av_log (TYPE_2__*,int ,char*,int ) ;
 char* av_malloc (int) ;
 scalar_t__ errno ;
 int memcpy (char*,int ,int) ;
 int zmq_msg_close (int *) ;
 int zmq_msg_data (int *) ;
 int zmq_msg_init (int *) ;
 int zmq_msg_recv (int *,int ,int ) ;
 int zmq_msg_size (int *) ;
 int zmq_strerror (scalar_t__) ;

__attribute__((used)) static int recv_msg(AVFilterContext *ctx, char **buf, int *buf_size)
{
    ZMQContext *zmq = ctx->priv;
    zmq_msg_t msg;
    int ret = 0;

    if (zmq_msg_init(&msg) == -1) {
        av_log(ctx, AV_LOG_WARNING,
               "Could not initialize receive message: %s\n", zmq_strerror(errno));
        return AVERROR_EXTERNAL;
    }

    if (zmq_msg_recv(&msg, zmq->responder, ZMQ_DONTWAIT) == -1) {
        if (errno != EAGAIN)
            av_log(ctx, AV_LOG_WARNING,
                   "Could not receive message: %s\n", zmq_strerror(errno));
        ret = AVERROR_EXTERNAL;
        goto end;
    }

    *buf_size = zmq_msg_size(&msg) + 1;
    *buf = av_malloc(*buf_size);
    if (!*buf) {
        ret = AVERROR(ENOMEM);
        goto end;
    }
    memcpy(*buf, zmq_msg_data(&msg), *buf_size - 1);
    (*buf)[*buf_size-1] = 0;

end:
    zmq_msg_close(&msg);
    return ret;
}

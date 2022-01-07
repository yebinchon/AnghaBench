
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int context; int socket; } ;
typedef TYPE_1__ ZMQContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ URLContext ;


 int zmq_close (int ) ;
 int zmq_ctx_term (int ) ;

__attribute__((used)) static int zmq_proto_close(URLContext *h)
{
    ZMQContext *s = h->priv_data;
    zmq_close(s->socket);
    zmq_ctx_term(s->context);
    return 0;
}

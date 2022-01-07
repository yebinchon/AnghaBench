
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* handler; int * dynamic_protocol_context; } ;
typedef int RTPDynamicProtocolHandler ;
typedef TYPE_1__ RTPDemuxContext ;
typedef int PayloadContext ;



void ff_rtp_parse_set_dynamic_protocol(RTPDemuxContext *s, PayloadContext *ctx,
                                       const RTPDynamicProtocolHandler *handler)
{
    s->dynamic_protocol_context = ctx;
    s->handler = handler;
}

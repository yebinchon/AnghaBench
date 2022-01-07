
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RTPDynamicProtocolHandler ;


 int ** rtp_dynamic_protocol_handler_list ;

const RTPDynamicProtocolHandler *ff_rtp_handler_iterate(void **opaque)
{
    uintptr_t i = (uintptr_t)*opaque;
    const RTPDynamicProtocolHandler *r = rtp_dynamic_protocol_handler_list[i];

    if (r)
        *opaque = (void*)(i + 1);

    return r;
}

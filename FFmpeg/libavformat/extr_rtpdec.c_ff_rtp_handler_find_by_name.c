
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_4__ {int codec_type; scalar_t__ enc_name; } ;
typedef TYPE_1__ RTPDynamicProtocolHandler ;


 int av_strcasecmp (char const*,scalar_t__) ;
 TYPE_1__* ff_rtp_handler_iterate (void**) ;

const RTPDynamicProtocolHandler *ff_rtp_handler_find_by_name(const char *name,
                                                       enum AVMediaType codec_type)
{
    void *i = 0;
    const RTPDynamicProtocolHandler *handler;
    while (handler = ff_rtp_handler_iterate(&i)) {
        if (handler->enc_name &&
            !av_strcasecmp(name, handler->enc_name) &&
            codec_type == handler->codec_type)
            return handler;
    }
    return ((void*)0);
}

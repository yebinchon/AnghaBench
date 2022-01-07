
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ AVCodecDescriptor ;


 int AVMEDIA_TYPE_UNKNOWN ;
 TYPE_1__* avcodec_descriptor_get (int) ;

enum AVMediaType avcodec_get_type(enum AVCodecID codec_id)
{
    const AVCodecDescriptor *desc = avcodec_descriptor_get(codec_id);
    return desc ? desc->type : AVMEDIA_TYPE_UNKNOWN;
}

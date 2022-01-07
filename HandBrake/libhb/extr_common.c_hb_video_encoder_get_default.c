
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int muxers; int codec; } ;
typedef TYPE_1__ hb_encoder_t ;


 int HB_MUX_MASK ;
 int HB_VCODEC_INVALID ;
 TYPE_1__* hb_video_encoder_get_next (TYPE_1__ const*) ;

int hb_video_encoder_get_default(int muxer)
{
    if (!(muxer & HB_MUX_MASK))
        goto fail;

    const hb_encoder_t *video_encoder = ((void*)0);
    while ((video_encoder = hb_video_encoder_get_next(video_encoder)) != ((void*)0))
    {
        if (video_encoder->muxers & muxer)
        {
            return video_encoder->codec;
        }
    }

fail:
    return HB_VCODEC_INVALID;
}

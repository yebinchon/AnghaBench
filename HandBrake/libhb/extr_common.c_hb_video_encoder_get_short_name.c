
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int codec; char const* short_name; } ;
typedef TYPE_1__ hb_encoder_t ;


 int HB_VCODEC_MASK ;
 TYPE_1__* hb_video_encoder_get_next (TYPE_1__ const*) ;

const char* hb_video_encoder_get_short_name(int encoder)
{
    if (!(encoder & HB_VCODEC_MASK))
        goto fail;

    const hb_encoder_t *video_encoder = ((void*)0);
    while ((video_encoder = hb_video_encoder_get_next(video_encoder)) != ((void*)0))
    {
        if (video_encoder->codec == encoder)
        {
            return video_encoder->short_name;
        }
    }

fail:
    return ((void*)0);
}

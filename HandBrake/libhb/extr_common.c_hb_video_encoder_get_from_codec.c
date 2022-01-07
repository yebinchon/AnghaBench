
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int codec; } ;
typedef TYPE_1__ hb_encoder_t ;
struct TYPE_5__ {TYPE_1__ item; } ;


 TYPE_2__* hb_video_encoders ;
 int hb_video_encoders_count ;

hb_encoder_t * hb_video_encoder_get_from_codec(int codec)
{
    int i;
    for (i = 0; i < hb_video_encoders_count; i++)
    {
        if (hb_video_encoders[i].item.codec == codec)
        {
            return &hb_video_encoders[i].item;
        }
    }

    return ((void*)0);
}

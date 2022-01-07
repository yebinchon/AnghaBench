
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int codec; } ;
typedef TYPE_1__ hb_encoder_t ;


 int hb_video_encoder_get_from_name (char const*) ;
 TYPE_1__* hb_video_encoder_get_next (TYPE_1__ const*) ;

const hb_encoder_t*
ghb_lookup_video_encoder(const char *name)
{

    int codec = hb_video_encoder_get_from_name(name);


    const hb_encoder_t *enc, *first;
    for (first = enc = hb_video_encoder_get_next(((void*)0)); enc != ((void*)0);
         enc = hb_video_encoder_get_next(enc))
    {
        if (codec == enc->codec)
        {
            return enc;
        }
    }

    return first;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int AV_CH_FRONT_LEFT_OF_CENTER ;
 int AV_CH_FRONT_RIGHT_OF_CENTER ;
 int AV_CH_LAYOUT_2_1 ;
 int AV_CH_LAYOUT_2_2 ;
 int AV_CH_LAYOUT_6POINT0 ;
 int AV_CH_LAYOUT_7POINT0 ;
 int AV_CH_LAYOUT_HEXAGONAL ;
 int AV_CH_LAYOUT_QUAD ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CH_LAYOUT_STEREO_DOWNMIX ;
 int AV_CH_LAYOUT_SURROUND ;
 int av_get_channel_layout_nb_channels (int) ;

int hb_mixdown_has_remix_support(int mixdown, uint64_t layout)
{




    if (!layout)
    {
        return 1;
    }
    switch (mixdown)
    {

        case 137:
            return ((layout & AV_CH_FRONT_LEFT_OF_CENTER) &&
                    (layout & AV_CH_FRONT_RIGHT_OF_CENTER) &&
                    (layout & AV_CH_LAYOUT_STEREO) == AV_CH_LAYOUT_STEREO);


        case 135:
            return ((layout & AV_CH_LAYOUT_7POINT0) == AV_CH_LAYOUT_7POINT0);


        case 136:
            return ((layout & AV_CH_LAYOUT_7POINT0) == AV_CH_LAYOUT_7POINT0 ||
                    (layout & AV_CH_LAYOUT_6POINT0) == AV_CH_LAYOUT_6POINT0 ||
                    (layout & AV_CH_LAYOUT_HEXAGONAL) == AV_CH_LAYOUT_HEXAGONAL);


        case 138:
            return ((layout & AV_CH_LAYOUT_2_1) == AV_CH_LAYOUT_2_1 ||
                    (layout & AV_CH_LAYOUT_2_2) == AV_CH_LAYOUT_2_2 ||
                    (layout & AV_CH_LAYOUT_QUAD) == AV_CH_LAYOUT_QUAD ||
                    (layout & AV_CH_LAYOUT_SURROUND) == AV_CH_LAYOUT_SURROUND);



        case 134:
        case 133:
            return ((layout & AV_CH_LAYOUT_2_1) == AV_CH_LAYOUT_2_1 ||
                    (layout & AV_CH_LAYOUT_2_2) == AV_CH_LAYOUT_2_2 ||
                    (layout & AV_CH_LAYOUT_QUAD) == AV_CH_LAYOUT_QUAD ||
                    (layout == AV_CH_LAYOUT_STEREO_DOWNMIX &&
                     mixdown == 134));


        case 128:
            return (av_get_channel_layout_nb_channels(layout) > 1);


        case 132:
        case 129:
            return (layout & AV_CH_LAYOUT_STEREO);



        case 131:
        case 130:
            return 1;


        default:
            return 0;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVDictionary ;






 int apply_vp8_preset (int **,char const*) ;
 int apply_vp9_preset (int **,char const*) ;
 int av_dict_set (int **,char*,char const*,int ) ;

__attribute__((used)) static int apply_encoder_preset(int vcodec, AVDictionary ** av_opts,
                                const char * preset)
{
    switch (vcodec)
    {
        case 129:
            return apply_vp8_preset(av_opts, preset);
        case 128:
            return apply_vp9_preset(av_opts, preset);
        case 131:
        case 130:
             av_dict_set( av_opts, "preset", preset, 0);
             break;
        default:
            break;
    }

    return 0;
}

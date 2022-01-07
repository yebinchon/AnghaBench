
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* const* h26x_nvenc_preset_names ;
 char const* const* h26x_vt_preset_name ;
 char const* const* hb_vce_preset_names ;
 char const* const* vpx_preset_names ;

const char* const* hb_av_preset_get_names(int encoder)
{
    switch (encoder)
    {
        case 131:
        case 130:
            return vpx_preset_names;

        case 133:
        case 132:
            return hb_vce_preset_names;

        case 135:
        case 134:
            return h26x_nvenc_preset_names;

        case 129:
        case 128:
            return h26x_vt_preset_name;

        default:
            return ((void*)0);
    }
}

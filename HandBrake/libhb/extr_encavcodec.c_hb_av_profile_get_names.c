
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* const* h264_nvenc_profile_names ;
 char const* const* h264_vt_profile_name ;
 char const* const* h265_nvenc_profile_names ;
 char const* const* h265_vt_profile_name ;

const char* const* hb_av_profile_get_names(int encoder)
{
    switch (encoder)
    {
        case 131:
            return h264_nvenc_profile_names;
        case 130:
            return h265_nvenc_profile_names;
        case 129:
            return h264_vt_profile_name;
        case 128:
            return h265_vt_profile_name;

         default:
             return ((void*)0);
     }
}

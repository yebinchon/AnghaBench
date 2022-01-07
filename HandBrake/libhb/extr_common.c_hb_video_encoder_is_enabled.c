
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x265_api ;
typedef int x264_api_t ;
 int HB_VCODEC_QSV_MASK ;







 int X265_BUILD ;
 int hb_nvenc_h264_available () ;
 int hb_nvenc_h265_available () ;
 int hb_qsv_video_encoder_is_enabled (int) ;
 int hb_vce_h264_available () ;
 int hb_vce_h265_available () ;
 int hb_video_encoder_get_depth (int) ;
 int hb_vt_h264_is_available () ;
 int hb_vt_h265_is_available () ;
 int * hb_x264_api_get (int ) ;
 int * x265_api_query (int ,int ,int *) ;

__attribute__((used)) static int hb_video_encoder_is_enabled(int encoder, int disable_hardware)
{

    if (!disable_hardware)
    {







        switch (encoder){
        }
    }


    switch (encoder)
    {

        case 134:
        case 143:
        case 144:
        case 138:
        case 137:
            return 1;
        case 132:
        case 133:
        {
            const x264_api_t *api;
            api = hb_x264_api_get(hb_video_encoder_get_depth(encoder));
            return (api != ((void*)0));
        }

        default:
            return 0;
    }
}

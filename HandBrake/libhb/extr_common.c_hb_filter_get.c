
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_filter_object_t ;
 int hb_filter_avfilter ;
 int hb_filter_chroma_smooth ;
 int hb_filter_colorspace ;
 int hb_filter_comb_detect ;
 int hb_filter_crop_scale ;
 int hb_filter_deblock ;
 int hb_filter_decomb ;
 int hb_filter_deinterlace ;
 int hb_filter_denoise ;
 int hb_filter_detelecine ;
 int hb_filter_grayscale ;
 int hb_filter_lapsharp ;
 int hb_filter_mt_frame ;
 int hb_filter_nlmeans ;
 int hb_filter_pad ;
 int hb_filter_qsv ;
 int hb_filter_qsv_post ;
 int hb_filter_qsv_pre ;
 int hb_filter_render_sub ;
 int hb_filter_rotate ;
 int hb_filter_unsharp ;
 int hb_filter_vfr ;

hb_filter_object_t * hb_filter_get( int filter_id )
{
    hb_filter_object_t * filter;
    switch( filter_id )
    {
        case 140:
            filter = &hb_filter_detelecine;
            break;

        case 146:
            filter = &hb_filter_comb_detect;
            break;

        case 143:
            filter = &hb_filter_decomb;
            break;

        case 142:
            filter = &hb_filter_deinterlace;
            break;

        case 147:
            filter = &hb_filter_colorspace;
            break;

        case 128:
            filter = &hb_filter_vfr;
            break;

        case 144:
            filter = &hb_filter_deblock;
            break;

        case 141:
            filter = &hb_filter_denoise;
            break;

        case 136:
            filter = &hb_filter_nlmeans;
            break;

        case 148:
            filter = &hb_filter_chroma_smooth;
            break;

        case 131:
            filter = &hb_filter_render_sub;
            break;

        case 145:
            filter = &hb_filter_crop_scale;
            break;

        case 138:
            filter = &hb_filter_lapsharp;
            break;

        case 129:
            filter = &hb_filter_unsharp;
            break;

        case 149:
            filter = &hb_filter_avfilter;
            break;

        case 135:
            filter = &hb_filter_pad;
            break;

        case 130:
            filter = &hb_filter_rotate;
            break;

        case 139:
            filter = &hb_filter_grayscale;
            break;
        case 137:
            filter = &hb_filter_mt_frame;
            break;

        default:
            filter = ((void*)0);
            break;
    }
    return filter;
}

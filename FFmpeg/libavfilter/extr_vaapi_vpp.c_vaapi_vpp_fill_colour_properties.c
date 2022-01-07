
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int VAProcColorStandardType ;
struct TYPE_6__ {int va_color_range; int va_chroma_sample_location; int va_color_standard; int chroma_sample_location; int color_trc; int color_primaries; int colorspace; int color_range; } ;
typedef TYPE_1__ VAAPIColourProperties ;
typedef int AVFilterContext ;


 int AV_LOG_DEBUG ;
 int av_chroma_location_name (int ) ;
 int av_color_primaries_name (int ) ;
 int av_color_range_name (int ) ;
 int av_color_space_name (int ) ;
 int av_color_transfer_name (int ) ;
 int av_log (int *,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int vaapi_vpp_fill_chroma_sample_location (TYPE_1__*) ;
 int vaapi_vpp_fill_colour_range (TYPE_1__*) ;
 int vaapi_vpp_fill_colour_standard (TYPE_1__*,int *,int) ;

__attribute__((used)) static void vaapi_vpp_fill_colour_properties(AVFilterContext *avctx,
                                             VAAPIColourProperties *props,
                                             VAProcColorStandardType *vacs,
                                             int nb_vacs)
{
    vaapi_vpp_fill_colour_standard(props, vacs, nb_vacs);
    vaapi_vpp_fill_chroma_sample_location(props);
    vaapi_vpp_fill_colour_range(props);

    av_log(avctx, AV_LOG_DEBUG, "Mapped colour properties %s %s/%s/%s %s "
           "to VA standard %d chroma siting %#x range %#x.\n",
           av_color_range_name(props->color_range),
           av_color_space_name(props->colorspace),
           av_color_primaries_name(props->color_primaries),
           av_color_transfer_name(props->color_trc),
           av_chroma_location_name(props->chroma_sample_location),
           props->va_color_standard,
           props->va_chroma_sample_location, props->va_color_range);
}

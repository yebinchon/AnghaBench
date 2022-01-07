
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct HLSContext {int nb_varstreams; TYPE_1__* var_streams; } ;
struct TYPE_2__ {int varname; int baseurl; int ccgroup; int language; int agroup; int streams; int m3u8_name; int old_segments; int segments; int vtt_m3u8_name; int vtt_basename; int fmp4_init_filename; int base_output_dirname; int basename; int * vtt_avf; } ;
typedef TYPE_1__ VariantStream ;
typedef int AVFormatContext ;


 int av_freep (int *) ;
 int hls_free_segments (int ) ;

__attribute__((used)) static void hls_free_variant_streams(struct HLSContext *hls)
{
    int i = 0;
    AVFormatContext *vtt_oc = ((void*)0);
    VariantStream *vs = ((void*)0);

    for (i = 0; i < hls->nb_varstreams; i++) {
        vs = &hls->var_streams[i];
        vtt_oc = vs->vtt_avf;

        av_freep(&vs->basename);
        av_freep(&vs->base_output_dirname);
        av_freep(&vs->fmp4_init_filename);
        if (vtt_oc) {
            av_freep(&vs->vtt_basename);
            av_freep(&vs->vtt_m3u8_name);
        }

        hls_free_segments(vs->segments);
        hls_free_segments(vs->old_segments);
        av_freep(&vs->m3u8_name);
        av_freep(&vs->streams);
        av_freep(&vs->agroup);
        av_freep(&vs->language);
        av_freep(&vs->ccgroup);
        av_freep(&vs->baseurl);
        av_freep(&vs->varname);
    }
}

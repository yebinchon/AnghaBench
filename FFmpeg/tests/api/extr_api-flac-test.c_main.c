
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int AVCodecContext ;
typedef int AVCodec ;


 int AV_CH_LAYOUT_5POINT1_BACK ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CH_LAYOUT_STEREO_DOWNMIX ;
 int AV_CH_LAYOUT_SURROUND ;
 int AV_CODEC_ID_FLAC ;
 int AV_LOG_ERROR ;
 int FF_ARRAY_ELEMS (int*) ;
 int av_log (int *,int ,char*) ;
 int * avcodec_find_decoder (int ) ;
 int * avcodec_find_encoder (int ) ;
 int close_decoder (int **) ;
 int close_encoder (int **) ;
 scalar_t__ init_decoder (int *,int **,int) ;
 scalar_t__ init_encoder (int *,int **,int,int) ;
 scalar_t__ run_test (int *,int *,int *,int *) ;

int main(void)
{
    AVCodec *enc = ((void*)0), *dec = ((void*)0);
    AVCodecContext *enc_ctx = ((void*)0), *dec_ctx = ((void*)0);
    uint64_t channel_layouts[] = {AV_CH_LAYOUT_STEREO, AV_CH_LAYOUT_5POINT1_BACK, AV_CH_LAYOUT_SURROUND, AV_CH_LAYOUT_STEREO_DOWNMIX};
    int sample_rates[] = {8000, 44100, 48000, 192000};
    int cl, sr;

    enc = avcodec_find_encoder(AV_CODEC_ID_FLAC);
    if (!enc) {
        av_log(((void*)0), AV_LOG_ERROR, "Can't find encoder\n");
        return 1;
    }

    dec = avcodec_find_decoder(AV_CODEC_ID_FLAC);
    if (!dec) {
        av_log(((void*)0), AV_LOG_ERROR, "Can't find decoder\n");
        return 1;
    }

    for (cl = 0; cl < FF_ARRAY_ELEMS(channel_layouts); cl++) {
        for (sr = 0; sr < FF_ARRAY_ELEMS(sample_rates); sr++) {
            if (init_encoder(enc, &enc_ctx, channel_layouts[cl], sample_rates[sr]) != 0)
                return 1;
            if (init_decoder(dec, &dec_ctx, channel_layouts[cl]) != 0)
                return 1;
            if (run_test(enc, dec, enc_ctx, dec_ctx) != 0)
                return 1;
            close_encoder(&enc_ctx);
            close_decoder(&dec_ctx);
        }
    }

    return 0;
}

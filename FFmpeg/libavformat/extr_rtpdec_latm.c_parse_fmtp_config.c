
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int extradata_size; void** extradata; } ;
struct TYPE_4__ {TYPE_3__* codecpar; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AVStream ;


 int AVERROR (int ) ;
 int AVERROR_PATCHWELCOME ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int ENOMEM ;
 int av_free (int *) ;
 int av_freep (void***) ;
 int * av_mallocz (scalar_t__) ;
 int avpriv_report_missing_feature (int *,char*,int,int,int,int) ;
 scalar_t__ ff_alloc_extradata (TYPE_3__*,int) ;
 int ff_hex_to_data (int *,char const*) ;
 void* get_bits (int *,int) ;
 int get_bits_left (int *) ;
 int init_get_bits (int *,int *,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int parse_fmtp_config(AVStream *st, const char *value)
{
    int len = ff_hex_to_data(((void*)0), value), i, ret = 0;
    GetBitContext gb;
    uint8_t *config;
    int audio_mux_version, same_time_framing, num_programs, num_layers;


    config = av_mallocz(len + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!config)
        return AVERROR(ENOMEM);
    ff_hex_to_data(config, value);
    init_get_bits(&gb, config, len*8);
    audio_mux_version = get_bits(&gb, 1);
    same_time_framing = get_bits(&gb, 1);
    skip_bits(&gb, 6);
    num_programs = get_bits(&gb, 4);
    num_layers = get_bits(&gb, 3);
    if (audio_mux_version != 0 || same_time_framing != 1 || num_programs != 0 ||
        num_layers != 0) {
        avpriv_report_missing_feature(((void*)0), "LATM config (%d,%d,%d,%d)",
                                      audio_mux_version, same_time_framing,
                                      num_programs, num_layers);
        ret = AVERROR_PATCHWELCOME;
        goto end;
    }
    av_freep(&st->codecpar->extradata);
    if (ff_alloc_extradata(st->codecpar, (get_bits_left(&gb) + 7)/8)) {
        ret = AVERROR(ENOMEM);
        goto end;
    }
    for (i = 0; i < st->codecpar->extradata_size; i++)
        st->codecpar->extradata[i] = get_bits(&gb, 8);

end:
    av_free(config);
    return ret;
}

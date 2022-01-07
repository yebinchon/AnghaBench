
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_24__ {char* channels; char* sample_rate; int sample_fmt; int codec_type; } ;
struct TYPE_23__ {int index; } ;
struct TYPE_22__ {int ofile_idx; int ostream_idx; int channel_idx; scalar_t__ file_idx; scalar_t__ stream_idx; } ;
struct TYPE_21__ {scalar_t__ file_index; TYPE_1__* st; } ;
struct TYPE_20__ {int nb_filters; int nb_audio_channel_maps; TYPE_5__* audio_channel_maps; } ;
struct TYPE_19__ {char* filters_script; char* filters; char* apad; int file_index; size_t source_index; int* audio_channels_map; scalar_t__ stream_copy; scalar_t__ audio_channels_mapped; TYPE_6__* st; int avfilter; TYPE_7__* enc_ctx; } ;
struct TYPE_18__ {scalar_t__ index; } ;
typedef TYPE_2__ OutputStream ;
typedef TYPE_3__ OptionsContext ;
typedef TYPE_4__ InputStream ;
typedef TYPE_5__ AudioChannelMap ;
typedef TYPE_6__ AVStream ;
typedef int AVFormatContext ;
typedef TYPE_7__ AVCodecContext ;


 int AVMEDIA_TYPE_AUDIO ;
 int AV_LOG_ERROR ;
 int AV_LOG_FATAL ;
 int AV_SAMPLE_FMT_NONE ;
 int MATCH_PER_STREAM_OPT (int ,int ,char*,int *,TYPE_6__*) ;
 int apad ;
 int audio_channels ;
 int audio_sample_rate ;
 int av_get_sample_fmt (char*) ;
 int av_log (int *,int ,char*,...) ;
 scalar_t__ av_reallocp_array (int**,scalar_t__,int) ;
 char* av_strdup (char*) ;
 int check_streamcopy_filters (TYPE_3__*,int *,TYPE_2__*,int ) ;
 int exit_program (int) ;
 int filter_scripts ;
 int filters ;
 int get_ost_filters (TYPE_3__*,int *,TYPE_2__*) ;
 int i ;
 TYPE_4__** input_streams ;
 TYPE_2__* new_output_stream (TYPE_3__*,int *,int ,int) ;
 int sample_fmts ;
 int str ;

__attribute__((used)) static OutputStream *new_audio_stream(OptionsContext *o, AVFormatContext *oc, int source_index)
{
    int n;
    AVStream *st;
    OutputStream *ost;
    AVCodecContext *audio_enc;

    ost = new_output_stream(o, oc, AVMEDIA_TYPE_AUDIO, source_index);
    st = ost->st;

    audio_enc = ost->enc_ctx;
    audio_enc->codec_type = AVMEDIA_TYPE_AUDIO;

    MATCH_PER_STREAM_OPT(filter_scripts, str, ost->filters_script, oc, st);
    MATCH_PER_STREAM_OPT(filters, str, ost->filters, oc, st);
    if (o->nb_filters > 1)
        av_log(((void*)0), AV_LOG_ERROR, "Only '-af %s' read, ignoring remaining -af options: Use ',' to separate filters\n", ost->filters);

    if (!ost->stream_copy) {
        char *sample_fmt = ((void*)0);

        MATCH_PER_STREAM_OPT(audio_channels, i, audio_enc->channels, oc, st);

        MATCH_PER_STREAM_OPT(sample_fmts, str, sample_fmt, oc, st);
        if (sample_fmt &&
            (audio_enc->sample_fmt = av_get_sample_fmt(sample_fmt)) == AV_SAMPLE_FMT_NONE) {
            av_log(((void*)0), AV_LOG_FATAL, "Invalid sample format '%s'\n", sample_fmt);
            exit_program(1);
        }

        MATCH_PER_STREAM_OPT(audio_sample_rate, i, audio_enc->sample_rate, oc, st);

        MATCH_PER_STREAM_OPT(apad, str, ost->apad, oc, st);
        ost->apad = av_strdup(ost->apad);

        ost->avfilter = get_ost_filters(o, oc, ost);
        if (!ost->avfilter)
            exit_program(1);


        for (n = 0; n < o->nb_audio_channel_maps; n++) {
            AudioChannelMap *map = &o->audio_channel_maps[n];
            if ((map->ofile_idx == -1 || ost->file_index == map->ofile_idx) &&
                (map->ostream_idx == -1 || ost->st->index == map->ostream_idx)) {
                InputStream *ist;

                if (map->channel_idx == -1) {
                    ist = ((void*)0);
                } else if (ost->source_index < 0) {
                    av_log(((void*)0), AV_LOG_FATAL, "Cannot determine input stream for channel mapping %d.%d\n",
                           ost->file_index, ost->st->index);
                    continue;
                } else {
                    ist = input_streams[ost->source_index];
                }

                if (!ist || (ist->file_index == map->file_idx && ist->st->index == map->stream_idx)) {
                    if (av_reallocp_array(&ost->audio_channels_map,
                                          ost->audio_channels_mapped + 1,
                                          sizeof(*ost->audio_channels_map)
                                          ) < 0 )
                        exit_program(1);

                    ost->audio_channels_map[ost->audio_channels_mapped++] = map->channel_idx;
                }
            }
        }
    }

    if (ost->stream_copy)
        check_streamcopy_filters(o, oc, ost, AVMEDIA_TYPE_AUDIO);

    return ost;
}

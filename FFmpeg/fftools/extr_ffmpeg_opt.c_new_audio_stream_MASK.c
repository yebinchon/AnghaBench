#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {char* channels; char* sample_rate; int /*<<< orphan*/  sample_fmt; int /*<<< orphan*/  codec_type; } ;
struct TYPE_23__ {int index; } ;
struct TYPE_22__ {int ofile_idx; int ostream_idx; int channel_idx; scalar_t__ file_idx; scalar_t__ stream_idx; } ;
struct TYPE_21__ {scalar_t__ file_index; TYPE_1__* st; } ;
struct TYPE_20__ {int nb_filters; int nb_audio_channel_maps; TYPE_5__* audio_channel_maps; } ;
struct TYPE_19__ {char* filters_script; char* filters; char* apad; int file_index; size_t source_index; int* audio_channels_map; scalar_t__ stream_copy; scalar_t__ audio_channels_mapped; TYPE_6__* st; int /*<<< orphan*/  avfilter; TYPE_7__* enc_ctx; } ;
struct TYPE_18__ {scalar_t__ index; } ;
typedef  TYPE_2__ OutputStream ;
typedef  TYPE_3__ OptionsContext ;
typedef  TYPE_4__ InputStream ;
typedef  TYPE_5__ AudioChannelMap ;
typedef  TYPE_6__ AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_7__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  apad ; 
 int /*<<< orphan*/  audio_channels ; 
 int /*<<< orphan*/  audio_sample_rate ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int**,scalar_t__,int) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  filter_scripts ; 
 int /*<<< orphan*/  filters ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  i ; 
 TYPE_4__** input_streams ; 
 TYPE_2__* FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sample_fmts ; 
 int /*<<< orphan*/  str ; 

__attribute__((used)) static OutputStream *FUNC9(OptionsContext *o, AVFormatContext *oc, int source_index)
{
    int n;
    AVStream *st;
    OutputStream *ost;
    AVCodecContext *audio_enc;

    ost = FUNC8(o, oc, AVMEDIA_TYPE_AUDIO, source_index);
    st  = ost->st;

    audio_enc = ost->enc_ctx;
    audio_enc->codec_type = AVMEDIA_TYPE_AUDIO;

    FUNC0(filter_scripts, str, ost->filters_script, oc, st);
    FUNC0(filters,        str, ost->filters,        oc, st);
    if (o->nb_filters > 1)
        FUNC2(NULL, AV_LOG_ERROR, "Only '-af %s' read, ignoring remaining -af options: Use ',' to separate filters\n", ost->filters);

    if (!ost->stream_copy) {
        char *sample_fmt = NULL;

        FUNC0(audio_channels, i, audio_enc->channels, oc, st);

        FUNC0(sample_fmts, str, sample_fmt, oc, st);
        if (sample_fmt &&
            (audio_enc->sample_fmt = FUNC1(sample_fmt)) == AV_SAMPLE_FMT_NONE) {
            FUNC2(NULL, AV_LOG_FATAL, "Invalid sample format '%s'\n", sample_fmt);
            FUNC6(1);
        }

        FUNC0(audio_sample_rate, i, audio_enc->sample_rate, oc, st);

        FUNC0(apad, str, ost->apad, oc, st);
        ost->apad = FUNC4(ost->apad);

        ost->avfilter = FUNC7(o, oc, ost);
        if (!ost->avfilter)
            FUNC6(1);

        /* check for channel mapping for this audio stream */
        for (n = 0; n < o->nb_audio_channel_maps; n++) {
            AudioChannelMap *map = &o->audio_channel_maps[n];
            if ((map->ofile_idx   == -1 || ost->file_index == map->ofile_idx) &&
                (map->ostream_idx == -1 || ost->st->index  == map->ostream_idx)) {
                InputStream *ist;

                if (map->channel_idx == -1) {
                    ist = NULL;
                } else if (ost->source_index < 0) {
                    FUNC2(NULL, AV_LOG_FATAL, "Cannot determine input stream for channel mapping %d.%d\n",
                           ost->file_index, ost->st->index);
                    continue;
                } else {
                    ist = input_streams[ost->source_index];
                }

                if (!ist || (ist->file_index == map->file_idx && ist->st->index == map->stream_idx)) {
                    if (FUNC3(&ost->audio_channels_map,
                                          ost->audio_channels_mapped + 1,
                                          sizeof(*ost->audio_channels_map)
                                          ) < 0 )
                        FUNC6(1);

                    ost->audio_channels_map[ost->audio_channels_mapped++] = map->channel_idx;
                }
            }
        }
    }

    if (ost->stream_copy)
        FUNC5(o, oc, ost, AVMEDIA_TYPE_AUDIO);

    return ost;
}
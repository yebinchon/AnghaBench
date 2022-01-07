
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int last_video_stream; int video_stream; int last_audio_stream; int audio_stream; int last_subtitle_stream; int subtitle_stream; TYPE_5__* ic; } ;
typedef TYPE_2__ VideoState ;
struct TYPE_15__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_14__ {int nb_stream_indexes; int* stream_index; } ;
struct TYPE_13__ {TYPE_1__* codecpar; } ;
struct TYPE_11__ {int codec_type; int channels; int sample_rate; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVProgram ;
typedef TYPE_5__ AVFormatContext ;





 int AV_LOG_INFO ;
 TYPE_4__* av_find_program_from_stream (TYPE_5__*,int *,int) ;
 int av_get_media_type_string (int) ;
 int av_log (int *,int ,char*,int ,int,int) ;
 int stream_component_close (TYPE_2__*,int) ;
 int stream_component_open (TYPE_2__*,int) ;

__attribute__((used)) static void stream_cycle_channel(VideoState *is, int codec_type)
{
    AVFormatContext *ic = is->ic;
    int start_index, stream_index;
    int old_index;
    AVStream *st;
    AVProgram *p = ((void*)0);
    int nb_streams = is->ic->nb_streams;

    if (codec_type == 128) {
        start_index = is->last_video_stream;
        old_index = is->video_stream;
    } else if (codec_type == 130) {
        start_index = is->last_audio_stream;
        old_index = is->audio_stream;
    } else {
        start_index = is->last_subtitle_stream;
        old_index = is->subtitle_stream;
    }
    stream_index = start_index;

    if (codec_type != 128 && is->video_stream != -1) {
        p = av_find_program_from_stream(ic, ((void*)0), is->video_stream);
        if (p) {
            nb_streams = p->nb_stream_indexes;
            for (start_index = 0; start_index < nb_streams; start_index++)
                if (p->stream_index[start_index] == stream_index)
                    break;
            if (start_index == nb_streams)
                start_index = -1;
            stream_index = start_index;
        }
    }

    for (;;) {
        if (++stream_index >= nb_streams)
        {
            if (codec_type == 129)
            {
                stream_index = -1;
                is->last_subtitle_stream = -1;
                goto the_end;
            }
            if (start_index == -1)
                return;
            stream_index = 0;
        }
        if (stream_index == start_index)
            return;
        st = is->ic->streams[p ? p->stream_index[stream_index] : stream_index];
        if (st->codecpar->codec_type == codec_type) {

            switch (codec_type) {
            case 130:
                if (st->codecpar->sample_rate != 0 &&
                    st->codecpar->channels != 0)
                    goto the_end;
                break;
            case 128:
            case 129:
                goto the_end;
            default:
                break;
            }
        }
    }
 the_end:
    if (p && stream_index != -1)
        stream_index = p->stream_index[stream_index];
    av_log(((void*)0), AV_LOG_INFO, "Switch %s stream from #%d to #%d\n",
           av_get_media_type_string(codec_type),
           old_index,
           stream_index);

    stream_component_close(is, old_index);
    stream_component_open(is, stream_index);
}

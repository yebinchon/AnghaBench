
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_15__ {double gain_factor; int * resample; TYPE_7__* audio; } ;
struct TYPE_17__ {scalar_t__ next_pts; TYPE_3__ audio; } ;
typedef TYPE_5__ sync_stream_t ;
struct TYPE_16__ {scalar_t__ duration; scalar_t__ stop; scalar_t__ start; int frametype; int type; } ;
struct TYPE_18__ {int size; TYPE_4__ s; scalar_t__ data; } ;
typedef TYPE_6__ hb_buffer_t ;
struct TYPE_13__ {int codec; double gain; int mixdown; } ;
struct TYPE_14__ {TYPE_1__ out; } ;
struct TYPE_19__ {TYPE_2__ config; } ;
typedef TYPE_7__ hb_audio_t ;


 int AUDIO_BUF ;
 int HB_ACODEC_PASS_FLAG ;
 int HB_FRAME_AUDIO ;
 double MAX (double,double) ;
 double MIN (double,double) ;
 TYPE_6__* hb_audio_resample (int *,int const**,int) ;
 int hb_buffer_close (TYPE_6__**) ;
 int hb_mixdown_get_discrete_channel_count (int ) ;

__attribute__((used)) static hb_buffer_t * FilterAudioFrame( sync_stream_t * stream,
                                       hb_buffer_t *buf )
{
    hb_audio_t * audio = stream->audio.audio;




    if (buf->s.duration <= 0)
    {
        buf->s.duration = buf->s.stop - buf->s.start;
    }

    if (!(audio->config.out.codec & HB_ACODEC_PASS_FLAG))
    {




        if (stream->audio.resample != ((void*)0))
        {

            hb_buffer_t * out;
            int nsamples, sample_size;

            sample_size = hb_mixdown_get_discrete_channel_count(
                            audio->config.out.mixdown ) * sizeof( float );

            nsamples = buf->size / sample_size;
            out = hb_audio_resample(stream->audio.resample,
                                    (const uint8_t **)&buf->data,
                                    nsamples);
            hb_buffer_close(&buf);
            if (out == ((void*)0))
            {
                return ((void*)0);
            }
            out->s.start = stream->next_pts;
            out->s.stop = stream->next_pts + out->s.duration;
            buf = out;
        }
        if (audio->config.out.gain > 0.0)
        {
            int count, ii;

            count = buf->size / sizeof(float);
            for ( ii = 0; ii < count; ii++ )
            {
                double sample;

                sample = (double)*(((float*)buf->data)+ii);
                sample *= stream->audio.gain_factor;
                if (sample > 0)
                    sample = MIN(sample, 1.0);
                else
                    sample = MAX(sample, -1.0);
                *(((float*)buf->data)+ii) = sample;
            }
        }
        else if( audio->config.out.gain < 0.0 )
        {
            int count, ii;

            count = buf->size / sizeof(float);
            for ( ii = 0; ii < count; ii++ )
            {
                double sample;

                sample = (double)*(((float*)buf->data)+ii);
                sample *= stream->audio.gain_factor;
                *(((float*)buf->data)+ii) = sample;
            }
        }
    }

    buf->s.type = AUDIO_BUF;
    buf->s.frametype = HB_FRAME_AUDIO;

    return buf;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ snd_pcm_sframes_t ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ timestamp; int h; } ;
typedef TYPE_1__ AlsaData ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ av_gettime () ;
 int snd_pcm_delay (int ,scalar_t__*) ;

__attribute__((used)) static void
audio_get_output_timestamp(AVFormatContext *s1, int stream,
    int64_t *dts, int64_t *wall)
{
    AlsaData *s = s1->priv_data;
    snd_pcm_sframes_t delay = 0;
    *wall = av_gettime();
    snd_pcm_delay(s->h, &delay);
    *dts = s->timestamp - delay;
}

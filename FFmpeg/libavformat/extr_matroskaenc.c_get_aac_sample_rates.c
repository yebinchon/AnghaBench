
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_1__* pb; } ;
struct TYPE_9__ {int sample_rate; int ext_sample_rate; } ;
struct TYPE_8__ {int seekable; } ;
typedef TYPE_2__ MPEG4AudioConfig ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVIO_SEEKABLE_NORMAL ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_3__*,int ,char*) ;
 int avpriv_mpeg4audio_get_config2 (TYPE_2__*,int *,int,int,TYPE_3__*) ;

__attribute__((used)) static int get_aac_sample_rates(AVFormatContext *s, uint8_t *extradata, int extradata_size,
                                int *sample_rate, int *output_sample_rate)
{
    MPEG4AudioConfig mp4ac;
    int ret;

    ret = avpriv_mpeg4audio_get_config2(&mp4ac, extradata, extradata_size, 1, s);





    if (ret < 0 && (extradata_size || !(s->pb->seekable & AVIO_SEEKABLE_NORMAL))) {
        av_log(s, AV_LOG_ERROR,
               "Error parsing AAC extradata, unable to determine samplerate.\n");
        return AVERROR(EINVAL);
    }

    if (ret < 0) {





        *output_sample_rate = *sample_rate;
    } else {
        *sample_rate = mp4ac.sample_rate;
        *output_sample_rate = mp4ac.ext_sample_rate;
    }
    return 0;
}

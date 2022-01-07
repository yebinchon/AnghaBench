
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nb_samples; int pts; scalar_t__* extended_data; int channel_layout; int format; int sample_rate; } ;
typedef TYPE_1__ AVFrame ;


 int FRAME_SIZE ;
 int INPUT_CHANNEL_LAYOUT ;
 int INPUT_FORMAT ;
 int INPUT_SAMPLERATE ;
 int M_PI ;
 int av_frame_get_buffer (TYPE_1__*,int ) ;
 float sin (int) ;

__attribute__((used)) static int get_input(AVFrame *frame, int frame_num)
{
    int err, i, j;




    frame->sample_rate = INPUT_SAMPLERATE;
    frame->format = INPUT_FORMAT;
    frame->channel_layout = INPUT_CHANNEL_LAYOUT;
    frame->nb_samples = 1024;
    frame->pts = frame_num * 1024;

    err = av_frame_get_buffer(frame, 0);
    if (err < 0)
        return err;


    for (i = 0; i < 5; i++) {
        float *data = (float*)frame->extended_data[i];

        for (j = 0; j < frame->nb_samples; j++)
            data[j] = sin(2 * M_PI * (frame_num + j) * (i + 1) / 1024);
    }

    return 0;
}

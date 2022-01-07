
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVAudioFifo ;


 int AVERROR_EXIT ;
 int av_audio_fifo_realloc (int *,scalar_t__) ;
 scalar_t__ av_audio_fifo_size (int *) ;
 int const av_audio_fifo_write (int *,void**,int const) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int add_samples_to_fifo(AVAudioFifo *fifo,
                               uint8_t **converted_input_samples,
                               const int frame_size)
{
    int error;



    if ((error = av_audio_fifo_realloc(fifo, av_audio_fifo_size(fifo) + frame_size)) < 0) {
        fprintf(stderr, "Could not reallocate FIFO\n");
        return error;
    }


    if (av_audio_fifo_write(fifo, (void **)converted_input_samples,
                            frame_size) < frame_size) {
        fprintf(stderr, "Could not write data to FIFO\n");
        return AVERROR_EXIT;
    }
    return 0;
}

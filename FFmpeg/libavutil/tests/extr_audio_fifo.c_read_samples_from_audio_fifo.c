
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int channels; int nb_buffers; int sample_size; int sample_fmt; int nb_samples; } ;
typedef TYPE_1__ AVAudioFifo ;


 int ERROR (char*) ;
 int FFMIN (int,int ) ;
 int av_audio_fifo_read (TYPE_1__*,void**,int) ;
 void* av_malloc_array (int,int) ;
 int av_sample_fmt_is_planar (int ) ;
 int free_data_planes (TYPE_1__*,void**) ;

__attribute__((used)) static int read_samples_from_audio_fifo(AVAudioFifo* afifo, void ***output, int nb_samples)
{
    int i;
    int samples = FFMIN(nb_samples, afifo->nb_samples);
    int tot_elements = !av_sample_fmt_is_planar(afifo->sample_fmt)
                         ? samples : afifo->channels * samples;
    void **data_planes = av_malloc_array(afifo->nb_buffers, sizeof(void*));
    if (!data_planes)
        ERROR("failed to allocate memory!");
    if (*output)
        free_data_planes(afifo, *output);
    *output = data_planes;

    for (i = 0; i < afifo->nb_buffers; ++i){
        data_planes[i] = av_malloc_array(tot_elements, afifo->sample_size);
        if (!data_planes[i])
            ERROR("failed to allocate memory!");
    }

    return av_audio_fifo_read(afifo, *output, nb_samples);
}

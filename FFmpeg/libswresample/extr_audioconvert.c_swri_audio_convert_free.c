
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AudioConvert ;


 int av_freep (int **) ;

void swri_audio_convert_free(AudioConvert **ctx)
{
    av_freep(ctx);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wrap ;
typedef int uint8_t ;
typedef int AVAudioResampleContext ;


 int testneonclobbers (int (*) (int *,int **,int,int,int **,int,int),int *,int **,int,int,int **,int,int) ;

wrap(avresample_convert(AVAudioResampleContext *avr, uint8_t **output,
                        int out_plane_size, int out_samples, uint8_t **input,
                        int in_plane_size, int in_samples))
{
    testneonclobbers(avresample_convert, avr, output, out_plane_size,
                     out_samples, input, in_plane_size, in_samples);
}

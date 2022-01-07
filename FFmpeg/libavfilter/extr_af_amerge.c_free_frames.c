
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFrame ;


 int av_frame_free (int **) ;

__attribute__((used)) static void free_frames(int nb_inputs, AVFrame **input_frames)
{
    int i;
    for (i = 0; i < nb_inputs; i++)
        av_frame_free(&input_frames[i]);
}

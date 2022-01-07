
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFrame ;
typedef int AVFormatContext ;


 int av_write_uncoded_frame_internal (int *,int,int *,int) ;

int av_interleaved_write_uncoded_frame(AVFormatContext *s, int stream_index,
                                       AVFrame *frame)
{
    return av_write_uncoded_frame_internal(s, stream_index, frame, 1);
}

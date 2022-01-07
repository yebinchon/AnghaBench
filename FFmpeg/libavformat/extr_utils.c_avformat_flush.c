
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFormatContext ;


 int ff_read_frame_flush (int *) ;

int avformat_flush(AVFormatContext *s)
{
    ff_read_frame_flush(s);
    return 0;
}

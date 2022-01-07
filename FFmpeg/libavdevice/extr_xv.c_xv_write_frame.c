
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int linesize; int data; } ;
typedef TYPE_1__ AVFrame ;
typedef int AVFormatContext ;


 unsigned int AV_WRITE_UNCODED_FRAME_QUERY ;
 int write_picture (int *,int ,int ) ;

__attribute__((used)) static int xv_write_frame(AVFormatContext *s, int stream_index, AVFrame **frame,
                          unsigned flags)
{

    if ((flags & AV_WRITE_UNCODED_FRAME_QUERY))
        return 0;
    return write_picture(s, (*frame)->data, (*frame)->linesize);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int keyframe_filepositions; int keyframe_times; int * new_extradata; } ;
typedef TYPE_1__ FLVContext ;
typedef TYPE_2__ AVFormatContext ;


 int FLV_STREAM_TYPE_NB ;
 int av_freep (int *) ;

__attribute__((used)) static int flv_read_close(AVFormatContext *s)
{
    int i;
    FLVContext *flv = s->priv_data;
    for (i=0; i<FLV_STREAM_TYPE_NB; i++)
        av_freep(&flv->new_extradata[i]);
    av_freep(&flv->keyframe_times);
    av_freep(&flv->keyframe_filepositions);
    return 0;
}

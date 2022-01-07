
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int * avf; int list_pb; } ;
typedef TYPE_1__ SegmentContext ;
typedef TYPE_2__ AVFormatContext ;


 int avformat_free_context (int *) ;
 int ff_format_io_close (int *,int *) ;

__attribute__((used)) static void seg_free(AVFormatContext *s)
{
    SegmentContext *seg = s->priv_data;
    ff_format_io_close(seg->avf, &seg->list_pb);
    avformat_free_context(seg->avf);
    seg->avf = ((void*)0);
}

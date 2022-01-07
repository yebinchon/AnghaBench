
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* internal; } ;
struct TYPE_8__ {void* shortest_end; int raw_packet_buffer_remaining_size; void* offset; } ;
typedef TYPE_1__ AVFormatInternal ;
typedef TYPE_2__ AVFormatContext ;


 void* AV_NOPTS_VALUE ;
 int RAW_PACKET_BUFFER_SIZE ;
 int av_free (TYPE_2__*) ;
 TYPE_2__* av_malloc (int) ;
 TYPE_1__* av_mallocz (int) ;
 int avformat_get_context_defaults (TYPE_2__*) ;

AVFormatContext *avformat_alloc_context(void)
{
    AVFormatContext *ic;
    AVFormatInternal *internal;
    ic = av_malloc(sizeof(AVFormatContext));
    if (!ic) return ic;

    internal = av_mallocz(sizeof(*internal));
    if (!internal) {
        av_free(ic);
        return ((void*)0);
    }
    avformat_get_context_defaults(ic);
    ic->internal = internal;
    ic->internal->offset = AV_NOPTS_VALUE;
    ic->internal->raw_packet_buffer_remaining_size = RAW_PACKET_BUFFER_SIZE;
    ic->internal->shortest_end = AV_NOPTS_VALUE;

    return ic;
}

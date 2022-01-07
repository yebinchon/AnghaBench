
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int max_packet_size; } ;
struct TYPE_8__ {unsigned int io_buffer_size; int io_buffer; } ;
typedef TYPE_1__ DynBuffer ;
typedef TYPE_2__ AVIOContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_free (TYPE_1__*) ;
 TYPE_1__* av_mallocz (int) ;
 TYPE_2__* avio_alloc_context (int ,unsigned int,int,TYPE_1__*,int *,int ,int *) ;
 int * dyn_buf_seek ;
 int dyn_buf_write ;
 int dyn_packet_buf_write ;

__attribute__((used)) static int url_open_dyn_buf_internal(AVIOContext **s, int max_packet_size)
{
    DynBuffer *d;
    unsigned io_buffer_size = max_packet_size ? max_packet_size : 1024;

    if (sizeof(DynBuffer) + io_buffer_size < io_buffer_size)
        return -1;
    d = av_mallocz(sizeof(DynBuffer) + io_buffer_size);
    if (!d)
        return AVERROR(ENOMEM);
    d->io_buffer_size = io_buffer_size;
    *s = avio_alloc_context(d->io_buffer, d->io_buffer_size, 1, d, ((void*)0),
                            max_packet_size ? dyn_packet_buf_write : dyn_buf_write,
                            max_packet_size ? ((void*)0) : dyn_buf_seek);
    if(!*s) {
        av_free(d);
        return AVERROR(ENOMEM);
    }
    (*s)->max_packet_size = max_packet_size;
    return 0;
}

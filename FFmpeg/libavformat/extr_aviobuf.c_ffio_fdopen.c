
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {TYPE_3__* h; } ;
typedef TYPE_2__ uint8_t ;
struct TYPE_17__ {int max_packet_size; int flags; TYPE_1__* prot; int min_packet_size; scalar_t__ is_streamed; scalar_t__ protocol_blacklist; scalar_t__ protocol_whitelist; } ;
typedef TYPE_3__ URLContext ;
struct TYPE_18__ {int direct; int max_packet_size; int * av_class; int short_seek_get; int seekable; int read_seek; int read_pause; int min_packet_size; void* protocol_blacklist; void* protocol_whitelist; } ;
struct TYPE_15__ {scalar_t__ url_read_seek; } ;
typedef TYPE_2__ AVIOInternal ;
typedef TYPE_5__ AVIOContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_DIRECT ;
 int AVIO_FLAG_WRITE ;
 int AVIO_SEEKABLE_NORMAL ;
 int AVIO_SEEKABLE_TIME ;
 int ENOMEM ;
 int IO_BUFFER_SIZE ;
 int av_freep (TYPE_2__**) ;
 TYPE_2__* av_malloc (int) ;
 TYPE_2__* av_mallocz (int) ;
 void* av_strdup (scalar_t__) ;
 TYPE_5__* avio_alloc_context (TYPE_2__*,int,int,TYPE_2__*,int ,int ,int ) ;
 int avio_closep (TYPE_5__**) ;
 int ff_avio_class ;
 int io_read_packet ;
 int io_read_pause ;
 int io_read_seek ;
 int io_seek ;
 int io_short_seek ;
 int io_write_packet ;

int ffio_fdopen(AVIOContext **s, URLContext *h)
{
    AVIOInternal *internal = ((void*)0);
    uint8_t *buffer = ((void*)0);
    int buffer_size, max_packet_size;

    max_packet_size = h->max_packet_size;
    if (max_packet_size) {
        buffer_size = max_packet_size;
    } else {
        buffer_size = IO_BUFFER_SIZE;
    }
    buffer = av_malloc(buffer_size);
    if (!buffer)
        return AVERROR(ENOMEM);

    internal = av_mallocz(sizeof(*internal));
    if (!internal)
        goto fail;

    internal->h = h;

    *s = avio_alloc_context(buffer, buffer_size, h->flags & AVIO_FLAG_WRITE,
                            internal, io_read_packet, io_write_packet, io_seek);
    if (!*s)
        goto fail;

    (*s)->protocol_whitelist = av_strdup(h->protocol_whitelist);
    if (!(*s)->protocol_whitelist && h->protocol_whitelist) {
        avio_closep(s);
        goto fail;
    }
    (*s)->protocol_blacklist = av_strdup(h->protocol_blacklist);
    if (!(*s)->protocol_blacklist && h->protocol_blacklist) {
        avio_closep(s);
        goto fail;
    }
    (*s)->direct = h->flags & AVIO_FLAG_DIRECT;

    (*s)->seekable = h->is_streamed ? 0 : AVIO_SEEKABLE_NORMAL;
    (*s)->max_packet_size = max_packet_size;
    (*s)->min_packet_size = h->min_packet_size;
    if(h->prot) {
        (*s)->read_pause = io_read_pause;
        (*s)->read_seek = io_read_seek;

        if (h->prot->url_read_seek)
            (*s)->seekable |= AVIO_SEEKABLE_TIME;
    }
    (*s)->short_seek_get = io_short_seek;
    (*s)->av_class = &ff_avio_class;
    return 0;
fail:
    av_freep(&internal);
    av_freep(&buffer);
    return AVERROR(ENOMEM);
}

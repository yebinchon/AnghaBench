#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_3__* h; } ;
typedef  TYPE_2__ uint8_t ;
struct TYPE_17__ {int max_packet_size; int flags; TYPE_1__* prot; int /*<<< orphan*/  min_packet_size; scalar_t__ is_streamed; scalar_t__ protocol_blacklist; scalar_t__ protocol_whitelist; } ;
typedef  TYPE_3__ URLContext ;
struct TYPE_18__ {int direct; int max_packet_size; int /*<<< orphan*/ * av_class; int /*<<< orphan*/  short_seek_get; int /*<<< orphan*/  seekable; int /*<<< orphan*/  read_seek; int /*<<< orphan*/  read_pause; int /*<<< orphan*/  min_packet_size; void* protocol_blacklist; void* protocol_whitelist; } ;
struct TYPE_15__ {scalar_t__ url_read_seek; } ;
typedef  TYPE_2__ AVIOInternal ;
typedef  TYPE_5__ AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVIO_FLAG_DIRECT ; 
 int AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  AVIO_SEEKABLE_TIME ; 
 int /*<<< orphan*/  ENOMEM ; 
 int IO_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 TYPE_2__* FUNC2 (int) ; 
 TYPE_2__* FUNC3 (int) ; 
 void* FUNC4 (scalar_t__) ; 
 TYPE_5__* FUNC5 (TYPE_2__*,int,int,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__**) ; 
 int /*<<< orphan*/  ff_avio_class ; 
 int /*<<< orphan*/  io_read_packet ; 
 int /*<<< orphan*/  io_read_pause ; 
 int /*<<< orphan*/  io_read_seek ; 
 int /*<<< orphan*/  io_seek ; 
 int /*<<< orphan*/  io_short_seek ; 
 int /*<<< orphan*/  io_write_packet ; 

int FUNC7(AVIOContext **s, URLContext *h)
{
    AVIOInternal *internal = NULL;
    uint8_t *buffer = NULL;
    int buffer_size, max_packet_size;

    max_packet_size = h->max_packet_size;
    if (max_packet_size) {
        buffer_size = max_packet_size; /* no need to bufferize more than one packet */
    } else {
        buffer_size = IO_BUFFER_SIZE;
    }
    buffer = FUNC2(buffer_size);
    if (!buffer)
        return FUNC0(ENOMEM);

    internal = FUNC3(sizeof(*internal));
    if (!internal)
        goto fail;

    internal->h = h;

    *s = FUNC5(buffer, buffer_size, h->flags & AVIO_FLAG_WRITE,
                            internal, io_read_packet, io_write_packet, io_seek);
    if (!*s)
        goto fail;

    (*s)->protocol_whitelist = FUNC4(h->protocol_whitelist);
    if (!(*s)->protocol_whitelist && h->protocol_whitelist) {
        FUNC6(s);
        goto fail;
    }
    (*s)->protocol_blacklist = FUNC4(h->protocol_blacklist);
    if (!(*s)->protocol_blacklist && h->protocol_blacklist) {
        FUNC6(s);
        goto fail;
    }
    (*s)->direct = h->flags & AVIO_FLAG_DIRECT;

    (*s)->seekable = h->is_streamed ? 0 : AVIO_SEEKABLE_NORMAL;
    (*s)->max_packet_size = max_packet_size;
    (*s)->min_packet_size = h->min_packet_size;
    if(h->prot) {
        (*s)->read_pause = io_read_pause;
        (*s)->read_seek  = io_read_seek;

        if (h->prot->url_read_seek)
            (*s)->seekable |= AVIO_SEEKABLE_TIME;
    }
    (*s)->short_seek_get = io_short_seek;
    (*s)->av_class = &ff_avio_class;
    return 0;
fail:
    FUNC1(&internal);
    FUNC1(&buffer);
    return FUNC0(ENOMEM);
}
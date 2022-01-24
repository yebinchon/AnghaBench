#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ this_packet_offset; scalar_t__ next_packet_offset; int this_packet_size; int next_packet_size; int audio_track_count; } ;
typedef  TYPE_1__ XMVDemuxContext ;
struct TYPE_6__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s)
{
    XMVDemuxContext *xmv = s->priv_data;
    AVIOContext     *pb  = s->pb;
    int result;

    if (xmv->this_packet_offset == xmv->next_packet_offset)
        return AVERROR_EOF;

    /* Seek to it */
    xmv->this_packet_offset = xmv->next_packet_offset;
    if (FUNC1(pb, xmv->this_packet_offset, SEEK_SET) != xmv->this_packet_offset)
        return FUNC0(EIO);

    /* Update the size */
    xmv->this_packet_size = xmv->next_packet_size;
    if (xmv->this_packet_size < (12 + xmv->audio_track_count * 4))
        return FUNC0(EIO);

    /* Process the header */
    result = FUNC2(s);
    if (result)
        return result;

    /* Update the offset */
    xmv->next_packet_offset = xmv->this_packet_offset + xmv->this_packet_size;

    return 0;
}
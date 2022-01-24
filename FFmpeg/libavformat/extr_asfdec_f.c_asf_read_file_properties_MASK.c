#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {unsigned int min_pktsize; void* max_pktsize; void* max_bitrate; void* flags; void* ignore; void* preroll; void* send_time; void* play_time; void* create_time; void* file_size; int /*<<< orphan*/  guid; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
struct TYPE_6__ {void* packet_size; int /*<<< orphan*/ * pb; TYPE_3__* priv_data; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ ASFContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, int64_t size)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;

    FUNC2(pb, &asf->hdr.guid);
    asf->hdr.file_size   = FUNC1(pb);
    asf->hdr.create_time = FUNC1(pb);
    FUNC1(pb);                               /* number of packets */
    asf->hdr.play_time   = FUNC1(pb);
    asf->hdr.send_time   = FUNC1(pb);
    asf->hdr.preroll     = FUNC0(pb);
    asf->hdr.ignore      = FUNC0(pb);
    asf->hdr.flags       = FUNC0(pb);
    asf->hdr.min_pktsize = FUNC0(pb);
    asf->hdr.max_pktsize = FUNC0(pb);
    if (asf->hdr.min_pktsize >= (1U << 29))
        return AVERROR_INVALIDDATA;
    asf->hdr.max_bitrate = FUNC0(pb);
    s->packet_size       = asf->hdr.max_pktsize;

    return 0;
}
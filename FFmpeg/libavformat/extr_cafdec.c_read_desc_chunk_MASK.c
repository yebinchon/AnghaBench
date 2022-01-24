#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_11__ {TYPE_2__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {void* frames_per_packet; void* bytes_per_packet; } ;
struct TYPE_8__ {scalar_t__ codec_tag; int bit_rate; int /*<<< orphan*/  codec_id; void* bits_per_coded_sample; scalar_t__ sample_rate; void* channels; void* block_align; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ CafContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (char,char,char,char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ff_codec_caf_tags ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (void*,int) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    CafContext *caf = s->priv_data;
    AVStream *st;
    int flags;

    /* new audio stream */
    st = FUNC3(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    /* parse format description */
    st->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
    st->codecpar->sample_rate = FUNC2(FUNC5(pb));
    st->codecpar->codec_tag   = FUNC6(pb);
    flags = FUNC4(pb);
    caf->bytes_per_packet  = FUNC4(pb);
    st->codecpar->block_align = caf->bytes_per_packet;
    caf->frames_per_packet = FUNC4(pb);
    st->codecpar->channels    = FUNC4(pb);
    st->codecpar->bits_per_coded_sample = FUNC4(pb);

    /* calculate bit rate for constant size packets */
    if (caf->frames_per_packet > 0 && caf->bytes_per_packet > 0) {
        st->codecpar->bit_rate = (uint64_t)st->codecpar->sample_rate * (uint64_t)caf->bytes_per_packet * 8
                                 / (uint64_t)caf->frames_per_packet;
    } else {
        st->codecpar->bit_rate = 0;
    }

    /* determine codec */
    if (st->codecpar->codec_tag == FUNC1('l','p','c','m'))
        st->codecpar->codec_id = FUNC8(st->codecpar->bits_per_coded_sample, (flags ^ 0x2) | 0x4);
    else
        st->codecpar->codec_id = FUNC7(ff_codec_caf_tags, st->codecpar->codec_tag);
    return 0;
}
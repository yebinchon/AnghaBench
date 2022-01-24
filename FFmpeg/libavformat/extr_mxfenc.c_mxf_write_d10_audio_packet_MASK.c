#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_13__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_12__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {int edit_units_count; } ;
struct TYPE_9__ {int block_align; int channels; scalar_t__ codec_id; } ;
typedef  TYPE_2__ MXFContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_PCM_S24LE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(AVFormatContext *s, AVStream *st, AVPacket *pkt)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int frame_size = pkt->size / st->codecpar->block_align;
    uint8_t *samples = pkt->data;
    uint8_t *end = pkt->data + pkt->size;
    int i;

    FUNC5(pb, 4 + frame_size*4*8);

    FUNC2(pb, (frame_size == 1920 ? 0 : (mxf->edit_units_count-1) % 5 + 1));
    FUNC3(pb, frame_size);
    FUNC2(pb, (1<<st->codecpar->channels)-1);

    while (samples < end) {
        for (i = 0; i < st->codecpar->channels; i++) {
            uint32_t sample;
            if (st->codecpar->codec_id == AV_CODEC_ID_PCM_S24LE) {
                sample = FUNC1(samples)<< 4;
                samples += 3;
            } else {
                sample = FUNC0(samples)<<12;
                samples += 2;
            }
            FUNC4(pb, sample | i);
        }
        for (; i < 8; i++)
            FUNC4(pb, i);
    }
}
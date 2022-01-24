#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int extradata_size; int /*<<< orphan*/ * extradata; } ;
struct TYPE_8__ {TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_7__ {scalar_t__ object_type; int off; int /*<<< orphan*/  mod; int /*<<< orphan*/  counter; int /*<<< orphan*/  channel_conf; } ;
struct TYPE_6__ {TYPE_4__* codecpar; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_2__ LATMContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;

/* Variables and functions */
 scalar_t__ AOT_ALS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(AVFormatContext *s, PutBitContext *bs)
{
    LATMContext *ctx = s->priv_data;
    AVCodecParameters *par = s->streams[0]->codecpar;
    int header_size;

    /* AudioMuxElement */
    FUNC4(bs, 1, !!ctx->counter);

    if (!ctx->counter) {
        /* StreamMuxConfig */
        FUNC4(bs, 1, 0); /* audioMuxVersion */
        FUNC4(bs, 1, 1); /* allStreamsSameTimeFraming */
        FUNC4(bs, 6, 0); /* numSubFrames */
        FUNC4(bs, 4, 0); /* numProgram */
        FUNC4(bs, 3, 0); /* numLayer */

        /* AudioSpecificConfig */
        if (ctx->object_type == AOT_ALS) {
            header_size = par->extradata_size-(ctx->off >> 3);
            FUNC1(bs, &par->extradata[ctx->off >> 3], header_size);
        } else {
            // + 3 assumes not scalable and dependsOnCoreCoder == 0,
            // see decode_ga_specific_config in libavcodec/aacdec.c
            FUNC1(bs, par->extradata, ctx->off + 3);

            if (!ctx->channel_conf) {
                GetBitContext gb;
                int ret = FUNC3(&gb, par->extradata, par->extradata_size);
                FUNC0(ret >= 0); // extradata size has been checked already, so this should not fail
                FUNC5(&gb, ctx->off + 3);
                FUNC2(bs, &gb);
            }
        }

        FUNC4(bs, 3, 0); /* frameLengthType */
        FUNC4(bs, 8, 0xff); /* latmBufferFullness */

        FUNC4(bs, 1, 0); /* otherDataPresent */
        FUNC4(bs, 1, 0); /* crcCheckPresent */
    }

    ctx->counter++;
    ctx->counter %= ctx->mod;
}
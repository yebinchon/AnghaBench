#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int* coded_sample_fmt; int* coded_sample_rate; int channel_arrangement; int ch_modifier_thd0; int ch_modifier_thd1; int ch_modifier_thd2; int flags; int coded_peak_bitrate; int substream_info; int fs; int wordlength; int channel_occupancy; int summary_info; TYPE_1__* avctx; } ;
struct TYPE_4__ {scalar_t__ codec_id; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_2__ MLPEncodeContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_MLP ; 
 scalar_t__ AV_CODEC_ID_TRUEHD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAJOR_SYNC_INFO_SIGNATURE ; 
 int SYNC_MAJOR ; 
 int SYNC_MLP ; 
 int SYNC_TRUEHD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC5(MLPEncodeContext *ctx, uint8_t *buf, int buf_size)
{
    PutBitContext pb;

    FUNC3(&pb, buf, buf_size);

    FUNC4(&pb, 24, SYNC_MAJOR               );

    if (ctx->avctx->codec_id == AV_CODEC_ID_MLP) {
        FUNC4(&pb,  8, SYNC_MLP                 );
        FUNC4(&pb,  4, ctx->coded_sample_fmt [0]);
        FUNC4(&pb,  4, ctx->coded_sample_fmt [1]);
        FUNC4(&pb,  4, ctx->coded_sample_rate[0]);
        FUNC4(&pb,  4, ctx->coded_sample_rate[1]);
        FUNC4(&pb,  4, 0                        ); /* ignored */
        FUNC4(&pb,  4, 0                        ); /* multi_channel_type */
        FUNC4(&pb,  3, 0                        ); /* ignored */
        FUNC4(&pb,  5, ctx->channel_arrangement );
    } else if (ctx->avctx->codec_id == AV_CODEC_ID_TRUEHD) {
        FUNC4(&pb,  8, SYNC_TRUEHD              );
        FUNC4(&pb,  4, ctx->coded_sample_rate[0]);
        FUNC4(&pb,  4, 0                        ); /* ignored */
        FUNC4(&pb,  2, ctx->ch_modifier_thd0    );
        FUNC4(&pb,  2, ctx->ch_modifier_thd1    );
        FUNC4(&pb,  5, ctx->channel_arrangement );
        FUNC4(&pb,  2, ctx->ch_modifier_thd2    );
        FUNC4(&pb, 13, ctx->channel_arrangement );
    }

    FUNC4(&pb, 16, MAJOR_SYNC_INFO_SIGNATURE);
    FUNC4(&pb, 16, ctx->flags               );
    FUNC4(&pb, 16, 0                        ); /* ignored */
    FUNC4(&pb,  1, 1                        ); /* is_vbr */
    FUNC4(&pb, 15, ctx->coded_peak_bitrate  );
    FUNC4(&pb,  4, 1                        ); /* num_substreams */
    FUNC4(&pb,  4, 0x1                      ); /* ignored */

    /* channel_meaning */
    FUNC4(&pb,  8, ctx->substream_info      );
    FUNC4(&pb,  5, ctx->fs                  );
    FUNC4(&pb,  5, ctx->wordlength          );
    FUNC4(&pb,  6, ctx->channel_occupancy   );
    FUNC4(&pb,  3, 0                        ); /* ignored */
    FUNC4(&pb, 10, 0                        ); /* speaker_layout */
    FUNC4(&pb,  3, 0                        ); /* copy_protection */
    FUNC4(&pb, 16, 0x8080                   ); /* ignored */
    FUNC4(&pb,  7, 0                        ); /* ignored */
    FUNC4(&pb,  4, 0                        ); /* source_format */
    FUNC4(&pb,  5, ctx->summary_info        );

    FUNC2(&pb);

    FUNC0(buf+26, FUNC1(buf, 26));
}
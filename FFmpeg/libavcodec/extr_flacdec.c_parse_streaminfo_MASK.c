#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int /*<<< orphan*/  bps; int /*<<< orphan*/  channels; } ;
struct TYPE_8__ {int /*<<< orphan*/  sample_fmt; } ;
struct TYPE_7__ {int got_streaminfo; TYPE_5__ flac_stream_info; TYPE_4__* avctx; int /*<<< orphan*/  dsp; } ;
typedef  TYPE_1__ FLACContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FLAC_METADATA_TYPE_STREAMINFO ; 
 int FLAC_STREAMINFO_SIZE ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(FLACContext *s, const uint8_t *buf, int buf_size)
{
    int metadata_type, metadata_size, ret;

    if (buf_size < FLAC_STREAMINFO_SIZE+8) {
        /* need more data */
        return 0;
    }
    FUNC3(&buf[4], NULL, &metadata_type, &metadata_size);
    if (metadata_type != FLAC_METADATA_TYPE_STREAMINFO ||
        metadata_size != FLAC_STREAMINFO_SIZE) {
        return AVERROR_INVALIDDATA;
    }
    ret = FUNC1(s->avctx, &s->flac_stream_info, &buf[8]);
    if (ret < 0)
        return ret;
    ret = FUNC0(s);
    if (ret < 0)
        return ret;
    FUNC4(s);
    FUNC2(&s->dsp, s->avctx->sample_fmt,
                    s->flac_stream_info.channels, s->flac_stream_info.bps);
    s->got_streaminfo = 1;

    return 0;
}
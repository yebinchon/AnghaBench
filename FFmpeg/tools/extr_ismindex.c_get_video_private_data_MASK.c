#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct Track {int /*<<< orphan*/  codec_private; int /*<<< orphan*/  codec_private_size; } ;
struct TYPE_4__ {scalar_t__ codec_id; int extradata_size; int* extradata; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_CODEC_ID_VC1 ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC6 (struct Track*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct Track *track, AVCodecParameters *codecpar)
{
    AVIOContext *io = NULL;
    uint16_t sps_size, pps_size;
    int err;

    if (codecpar->codec_id == AV_CODEC_ID_VC1)
        return FUNC6(track, codecpar);

    if ((err = FUNC3(&io)) < 0)
        goto fail;
    err = FUNC0(EINVAL);
    if (codecpar->extradata_size < 11 || codecpar->extradata[0] != 1)
        goto fail;
    sps_size = FUNC1(&codecpar->extradata[6]);
    if (11 + sps_size > codecpar->extradata_size)
        goto fail;
    FUNC4(io, 0x00000001);
    FUNC5(io, &codecpar->extradata[8], sps_size);
    pps_size = FUNC1(&codecpar->extradata[9 + sps_size]);
    if (11 + sps_size + pps_size > codecpar->extradata_size)
        goto fail;
    FUNC4(io, 0x00000001);
    FUNC5(io, &codecpar->extradata[11 + sps_size], pps_size);
    err = 0;

fail:
    track->codec_private_size = FUNC2(io, &track->codec_private);
    return err;
}
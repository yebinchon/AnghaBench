#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int vos_len; scalar_t__ vos_data; } ;
typedef  TYPE_1__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = FUNC4(pb);
    int length;
    FUNC6(pb, 0);
    FUNC7(pb, "dmlp");

    if (track->vos_len < 20) {
        FUNC3(s, AV_LOG_ERROR,
               "Cannot write moov atom before TrueHD packets."
               " Set the delay_moov flag to fix this.\n");
        return FUNC0(EINVAL);
    }

    length = (FUNC1(track->vos_data) & 0xFFF) * 2;
    if (length < 20 || length > track->vos_len)
        return AVERROR_INVALIDDATA;

    // Only TrueHD is supported
    if (FUNC2(track->vos_data + 4) != 0xF8726FBA)
        return AVERROR_INVALIDDATA;

    FUNC6(pb, FUNC2(track->vos_data + 8)); /* format_info */
    FUNC5(pb, FUNC1(track->vos_data + 18) << 1); /* peak_data_rate */
    FUNC6(pb, 0); /* reserved */

    return FUNC8(pb, pos);
}
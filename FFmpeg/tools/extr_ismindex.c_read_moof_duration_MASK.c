#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ int64_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (char,char,unsigned char,char) ; 
 int MOV_TFHD_BASE_DATA_OFFSET ; 
 int MOV_TFHD_DEFAULT_DURATION ; 
 int MOV_TFHD_STSD_ID ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int64_t FUNC10(AVIOContext *in, int64_t offset)
{
    int64_t ret = -1;
    int32_t moof_size, size, tag;
    int64_t pos = 0;
    int default_duration = 0;

    FUNC5(in, offset, SEEK_SET);
    moof_size = FUNC3(in);
    tag  = FUNC3(in);
    if (FUNC7(tag, FUNC0('m', 'o', 'o', 'f')) != 0)
        goto fail;
    while (pos < offset + moof_size) {
        pos = FUNC6(in);
        size = FUNC3(in);
        tag  = FUNC3(in);
        if (tag == FUNC0('t', 'r', 'a', 'f')) {
            int64_t traf_pos = pos;
            int64_t traf_size = size;
            while (pos < traf_pos + traf_size) {
                pos = FUNC6(in);
                size = FUNC3(in);
                tag  = FUNC3(in);
                if (tag == FUNC0('t', 'f', 'h', 'd')) {
                    int flags = 0;
                    FUNC1(in); /* version */
                    flags = FUNC2(in);
                    FUNC3(in); /* track_id */
                    if (flags & MOV_TFHD_BASE_DATA_OFFSET)
                        FUNC4(in);
                    if (flags & MOV_TFHD_STSD_ID)
                        FUNC3(in);
                    if (flags & MOV_TFHD_DEFAULT_DURATION)
                        default_duration = FUNC3(in);
                }
                if (tag == FUNC0('t', 'r', 'u', 'n')) {
                    return FUNC9(in, default_duration,
                                              pos + size);
                }
                FUNC5(in, pos + size, SEEK_SET);
            }
            FUNC8(stderr, "Couldn't find trun\n");
            goto fail;
        }
        FUNC5(in, pos + size, SEEK_SET);
    }
    FUNC8(stderr, "Couldn't find traf\n");

fail:
    return ret;
}
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
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_AUTOMATIC ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int*,char) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC11(AVIOContext *pb, int *cur_byte, AVBPrint *bp, int full)
{
    int ret;

    FUNC6(bp, 0, full ? AV_BPRINT_SIZE_UNLIMITED : AV_BPRINT_SIZE_AUTOMATIC);
    ret = FUNC9(pb, cur_byte, '"');
    if (ret < 0)
        goto fail;
    while (*cur_byte > 0 && *cur_byte != '"') {
        if (*cur_byte == '\\') {
            FUNC10(pb, cur_byte);
            if (*cur_byte < 0) {
                ret = AVERROR_INVALIDDATA;
                goto fail;
            }
            if ((*cur_byte | 32) == 'u') {
                unsigned chr = 0, i;
                for (i = 0; i < 4; i++) {
                    FUNC10(pb, cur_byte);
                    if (!FUNC2(*cur_byte)) {
                        ret = FUNC1(*cur_byte);
                        goto fail;
                    }
                    chr = chr * 16 + FUNC3(*cur_byte);
                }
                FUNC8(bp, chr);
            } else {
                FUNC4(bp, *cur_byte, 1);
            }
        } else {
            FUNC4(bp, *cur_byte, 1);
        }
        FUNC10(pb, cur_byte);
    }
    ret = FUNC9(pb, cur_byte, '"');
    if (ret < 0)
        goto fail;
    if (full && !FUNC7(bp)) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }
    return 0;

fail:
    FUNC5(bp, NULL);
    return ret;
}
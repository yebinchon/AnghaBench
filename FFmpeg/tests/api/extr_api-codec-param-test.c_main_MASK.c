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
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,char*,int) ; 

int FUNC4(int argc, char* argv[])
{
    int ret = 0;
    AVFormatContext *fmt_ctx = NULL;
    AVFormatContext *fmt_ctx_no_decode = NULL;

    if (argc < 2) {
        FUNC0(NULL, AV_LOG_ERROR, "Usage: %s <input>\n", argv[0]);
        return -1;
    }

    if ((ret = FUNC3(&fmt_ctx_no_decode, argv[1], 0)) < 0) {
        FUNC0(NULL, AV_LOG_ERROR, "Failed to probe '%s' without frame decoding\n", argv[1]);
        goto end;
    }

    if ((ret = FUNC3(&fmt_ctx, argv[1], 1)) < 0) {
        FUNC0(NULL, AV_LOG_ERROR, "Failed to probe '%s' with frame decoding\n", argv[1]);
        goto end;
    }

    ret = FUNC2(fmt_ctx, fmt_ctx_no_decode);

end:
    FUNC1(&fmt_ctx);
    FUNC1(&fmt_ctx_no_decode);

    return ret;
}
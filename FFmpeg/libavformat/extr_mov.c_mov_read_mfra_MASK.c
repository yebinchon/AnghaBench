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
typedef  int int64_t ;
typedef  int int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  fc; } ;
typedef  TYPE_1__ MOVContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int FUNC0 (char,float,char,char) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(MOVContext *c, AVIOContext *f)
{
    int64_t stream_size = FUNC4(f);
    int64_t original_pos = FUNC5(f);
    int64_t seek_ret;
    int32_t mfra_size;
    int ret = -1;
    if ((seek_ret = FUNC3(f, stream_size - 4, SEEK_SET)) < 0) {
        ret = seek_ret;
        goto fail;
    }
    mfra_size = FUNC2(f);
    if (mfra_size < 0 || mfra_size > stream_size) {
        FUNC1(c->fc, AV_LOG_DEBUG, "doesn't look like mfra (unreasonable size)\n");
        goto fail;
    }
    if ((seek_ret = FUNC3(f, -mfra_size, SEEK_CUR)) < 0) {
        ret = seek_ret;
        goto fail;
    }
    if (FUNC2(f) != mfra_size) {
        FUNC1(c->fc, AV_LOG_DEBUG, "doesn't look like mfra (size mismatch)\n");
        goto fail;
    }
    if (FUNC2(f) != FUNC0('m', 'f', 'r', 'a')) {
        FUNC1(c->fc, AV_LOG_DEBUG, "doesn't look like mfra (tag mismatch)\n");
        goto fail;
    }
    FUNC1(c->fc, AV_LOG_VERBOSE, "stream has mfra\n");
    do {
        ret = FUNC6(c, f);
        if (ret < 0)
            goto fail;
    } while (!ret);
    ret = 0;
fail:
    seek_ret = FUNC3(f, original_pos, SEEK_SET);
    if (seek_ret < 0) {
        FUNC1(c->fc, AV_LOG_ERROR,
               "failed to seek back after looking for mfra\n");
        ret = seek_ret;
    }
    return ret;
}
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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  MOVMuxCencContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC6(AVFormatContext *s, MOVMuxCencContext* ctx,
    int nal_length_size, AVIOContext *pb, const uint8_t *buf_in, int size)
{
    int nalsize;
    int ret;
    int j;

    ret = FUNC4(ctx);
    if (ret) {
        return ret;
    }

    while (size > 0) {
        /* parse the nal size */
        if (size < nal_length_size + 1) {
            FUNC1(s, AV_LOG_ERROR, "CENC-AVC: remaining size %d smaller than nal length+type %d\n",
                size, nal_length_size + 1);
            return -1;
        }

        FUNC2(pb, buf_in, nal_length_size + 1);

        nalsize = 0;
        for (j = 0; j < nal_length_size; j++) {
            nalsize = (nalsize << 8) | *buf_in++;
        }
        size -= nal_length_size;

        /* encrypt the nal body */
        if (nalsize <= 0 || nalsize > size) {
            FUNC1(s, AV_LOG_ERROR, "CENC-AVC: nal size %d remaining %d\n", nalsize, size);
            return -1;
        }

        FUNC5(ctx, pb, buf_in + 1, nalsize - 1);
        buf_in += nalsize;
        size -= nalsize;

        FUNC0(ctx, nal_length_size + 1, nalsize - 1);
    }

    ret = FUNC3(ctx);
    if (ret) {
        return ret;
    }

    return 0;
}
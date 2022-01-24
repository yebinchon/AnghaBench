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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int,int*) ; 

int FUNC3(const uint8_t *buf_in, uint8_t **buf_out,
                           int *size, int filter_ps, int *ps_count)
{
    AVIOContext *pb;
    int ret;

    ret = FUNC1(&pb);
    if (ret < 0)
        return ret;

    ret   = FUNC2(pb, buf_in, *size, filter_ps, ps_count);
    *size = FUNC0(pb, buf_out);

    return ret;
}
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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  URLContext ;
struct TYPE_3__ {int swfhash_len; int /*<<< orphan*/  swfhash; int /*<<< orphan*/  swfsize; int /*<<< orphan*/ * swfverification; } ;
typedef  TYPE_1__ RTMPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(URLContext *s, RTMPContext *rt,
                                      uint8_t *buf)
{
    uint8_t *p;
    int ret;

    if (rt->swfhash_len != 32) {
        FUNC1(s, AV_LOG_ERROR,
               "Hash of the decompressed SWF file is not 32 bytes long.\n");
        return FUNC0(EINVAL);
    }

    p = &rt->swfverification[0];
    FUNC3(&p, 1);
    FUNC3(&p, 1);
    FUNC2(&p, rt->swfsize);
    FUNC2(&p, rt->swfsize);

    if ((ret = FUNC4(rt->swfhash, 32, 0, buf, 32, p)) < 0)
        return ret;

    return 0;
}
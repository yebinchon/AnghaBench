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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

int FUNC5(AVIOContext *h, AVBPrint *pb, size_t max_size)
{
    int ret;
    char buf[1024];
    while (max_size) {
        ret = FUNC4(h, buf, FUNC1(max_size, sizeof(buf)));
        if (ret == AVERROR_EOF)
            return 0;
        if (ret <= 0)
            return ret;
        FUNC2(pb, buf, ret);
        if (!FUNC3(pb))
            return FUNC0(ENOMEM);
        max_size -= ret;
    }
    return 0;
}
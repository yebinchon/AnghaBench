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
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(AVIOContext *in, AVIOContext *out, int32_t tag_name)
{
    int32_t size, tag;

    size = FUNC1(in);
    tag  = FUNC1(in);
    FUNC3(out, size);
    FUNC3(out, tag);
    if (FUNC5(tag, tag_name) != 0)
        return -1;
    size -= 8;
    while (size > 0) {
        char buf[1024];
        int len = FUNC0(sizeof(buf), size);
        int got;
        if ((got = FUNC2(in, buf, len)) != len) {
            FUNC6(stderr, "short read, wanted %d, got %d\n", len, got);
            break;
        }
        FUNC4(out, buf, len);
        size -= len;
    }
    return 0;
}
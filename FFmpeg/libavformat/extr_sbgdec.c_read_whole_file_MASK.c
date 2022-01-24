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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EFBIG ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC6(AVIOContext *io, int max_size, char **rbuf)
{
    char *buf = NULL;
    int size = 0, bufsize = 0, r;

    while (1) {
        if (bufsize - size < 1024) {
            bufsize = FUNC2(FUNC1(2 * bufsize, 8192), max_size);
            if (bufsize - size < 2) {
                size = FUNC0(EFBIG);
                goto fail;
            }
            buf = FUNC4(buf, bufsize, 1);
            if (!buf) {
                size = FUNC0(ENOMEM);
                goto fail;
            }
        }
        r = FUNC5(io, buf, bufsize - size - 1);
        if (r == AVERROR_EOF)
            break;
        if (r < 0)
            goto fail;
        size += r;
    }
    buf[size] = 0;
    *rbuf = buf;
    return size;
fail:
    FUNC3(buf);
    return size;
}
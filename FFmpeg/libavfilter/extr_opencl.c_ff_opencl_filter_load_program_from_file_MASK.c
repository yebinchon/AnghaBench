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
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (char**,size_t) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const**,int) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 size_t FUNC8 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int FUNC9 (char*,size_t,char*,char const*) ; 

int FUNC10(AVFilterContext *avctx,
                                            const char *filename)
{
    FILE *file;
    char *src = NULL;
    size_t pos, len, rb;
    const char *src_const;
    int err;

    file = FUNC7(filename, "r");
    if (!file) {
        FUNC2(avctx, AV_LOG_ERROR, "Unable to open program "
               "source file \"%s\".\n", filename);
        return FUNC0(ENOENT);
    }

    len = 1 << 16;
    pos = 0;

    err = FUNC3(&src, len);
    if (err < 0)
        goto fail;

    err = FUNC9(src, len, "#line 1 \"%s\"\n", filename);
    if (err < 0) {
        err = FUNC0(errno);
        goto fail;
    }
    if (err > len / 2) {
        err = FUNC0(EINVAL);
        goto fail;
    }
    pos = err;

    while (1) {
        rb = FUNC8(src + pos, 1, len - pos - 1, file);
        if (rb == 0 && FUNC5(file)) {
            err = FUNC0(EIO);
            goto fail;
        }
        pos += rb;
        if (pos < len)
            break;
        len <<= 1;
        err = FUNC3(&src, len);
        if (err < 0)
            goto fail;
    }
    src[pos] = 0;

    src_const = src;

    err = FUNC6(avctx, &src_const, 1);
fail:
    FUNC4(file);
    FUNC1(&src);
    return err;
}
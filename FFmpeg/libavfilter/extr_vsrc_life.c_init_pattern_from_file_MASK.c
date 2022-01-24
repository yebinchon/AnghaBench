#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {char* file_buf; int file_bufsize; int w; int h; scalar_t__ buf_idx; int /*<<< orphan*/ ** buf; int /*<<< orphan*/ * filename; } ;
typedef  TYPE_1__ LifeContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  ALIVE_CELL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 void* FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char**,int*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,char*,int,int,...) ; 

__attribute__((used)) static int FUNC7(AVFilterContext *ctx)
{
    LifeContext *life = ctx->priv;
    char *p;
    int ret, i, i0, j, h = 0, w, max_w = 0;

    if ((ret = FUNC3(life->filename, &life->file_buf, &life->file_bufsize,
                           0, ctx)) < 0)
        return ret;
    FUNC4(&life->filename);

    /* prescan file to get the number of lines and the maximum width */
    w = 0;
    for (i = 0; i < life->file_bufsize; i++) {
        if (life->file_buf[i] == '\n') {
            h++; max_w = FUNC1(w, max_w); w = 0;
        } else {
            w++;
        }
    }
    FUNC6(ctx, AV_LOG_DEBUG, "h:%d max_w:%d\n", h, max_w);

    if (life->w) {
        if (max_w > life->w || h > life->h) {
            FUNC6(ctx, AV_LOG_ERROR,
                   "The specified size is %dx%d which cannot contain the provided file size of %dx%d\n",
                   life->w, life->h, max_w, h);
            return FUNC0(EINVAL);
        }
    } else {
        /* size was not specified, set it to size of the grid */
        life->w = max_w;
        life->h = h;
    }

    if (!(life->buf[0] = FUNC2(life->h * life->w, sizeof(*life->buf[0]))) ||
        !(life->buf[1] = FUNC2(life->h * life->w, sizeof(*life->buf[1])))) {
        FUNC4(&life->buf[0]);
        FUNC4(&life->buf[1]);
        return FUNC0(ENOMEM);
    }

    /* fill buf[0] */
    p = life->file_buf;
    for (i0 = 0, i = (life->h - h)/2; i0 < h; i0++, i++) {
        for (j = (life->w - max_w)/2;; j++) {
            FUNC6(ctx, AV_LOG_DEBUG, "%d:%d %c\n", i, j, *p == '\n' ? 'N' : *p);
            if (*p == '\n') {
                p++; break;
            } else
                life->buf[0][i*life->w + j] = FUNC5(*(p++)) ? ALIVE_CELL : 0;
        }
    }
    life->buf_idx = 0;

    return 0;
}
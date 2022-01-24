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
struct TYPE_6__ {int file_bufsize; scalar_t__* pattern; int /*<<< orphan*/  file_buf; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ CellAutoContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__* FUNC2 (int) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(AVFilterContext *ctx)
{
    CellAutoContext *s = ctx->priv;
    int ret;

    ret = FUNC1(s->filename,
                      &s->file_buf, &s->file_bufsize, 0, ctx);
    if (ret < 0)
        return ret;

    /* create a string based on the read file */
    s->pattern = FUNC2(s->file_bufsize + 1);
    if (!s->pattern)
        return FUNC0(ENOMEM);
    FUNC4(s->pattern, s->file_buf, s->file_bufsize);
    s->pattern[s->file_bufsize] = 0;

    return FUNC3(ctx);
}
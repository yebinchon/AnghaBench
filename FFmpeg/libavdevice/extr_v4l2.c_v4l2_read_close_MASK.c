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
struct video_data {scalar_t__ buffers; int /*<<< orphan*/  fd; int /*<<< orphan*/  buffers_queued; } ;
struct TYPE_4__ {struct video_data* priv_data; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct video_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *ctx)
{
    struct video_data *s = ctx->priv_data;

    if (FUNC0(&s->buffers_queued) != s->buffers)
        FUNC1(ctx, AV_LOG_WARNING, "Some buffers are still owned by the caller on "
               "close.\n");

    FUNC2(s);

    FUNC3(s->fd);
    return 0;
}
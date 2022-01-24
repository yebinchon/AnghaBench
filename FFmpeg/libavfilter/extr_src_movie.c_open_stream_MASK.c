#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  codec_id; } ;
struct TYPE_10__ {int refcounted_frames; int /*<<< orphan*/  thread_count; } ;
struct TYPE_9__ {TYPE_4__* codec_ctx; TYPE_1__* st; } ;
struct TYPE_8__ {TYPE_5__* codecpar; } ;
typedef  TYPE_2__ MovieStream ;
typedef  int /*<<< orphan*/  AVFilterContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVFilterContext *ctx, MovieStream *st)
{
    AVCodec *codec;
    int ret;

    codec = FUNC3(st->st->codecpar->codec_id);
    if (!codec) {
        FUNC1(ctx, AV_LOG_ERROR, "Failed to find any codec\n");
        return FUNC0(EINVAL);
    }

    st->codec_ctx = FUNC2(codec);
    if (!st->codec_ctx)
        return FUNC0(ENOMEM);

    ret = FUNC5(st->codec_ctx, st->st->codecpar);
    if (ret < 0)
        return ret;

    st->codec_ctx->refcounted_frames = 1;
    st->codec_ctx->thread_count = FUNC6(ctx);

    if ((ret = FUNC4(st->codec_ctx, codec, NULL)) < 0) {
        FUNC1(ctx, AV_LOG_ERROR, "Failed to open codec\n");
        return ret;
    }

    return 0;
}
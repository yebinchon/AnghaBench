#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  value; } ;
struct TYPE_20__ {int /*<<< orphan*/ * outputs; TYPE_2__* priv; } ;
struct TYPE_19__ {TYPE_5__* dst; } ;
struct TYPE_18__ {int width; int height; int /*<<< orphan*/  metadata; } ;
struct TYPE_17__ {int width; int height; scalar_t__ mode; TYPE_1__* cover_frame; } ;
struct TYPE_16__ {int width; int height; } ;
typedef  TYPE_2__ CoverContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;
typedef  TYPE_6__ AVDictionaryEntry ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_DICT_MATCH_CASE ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int,int) ; 
 scalar_t__ MODE_BLUR ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,char**,int) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    CoverContext *cover = ctx->priv;
    AVDictionaryEntry *ex, *ey, *ew, *eh;
    int x = -1, y = -1, w = -1, h = -1;
    char *xendptr = NULL, *yendptr = NULL, *wendptr = NULL, *hendptr = NULL;

    ex = FUNC3(in->metadata, "lavfi.rect.x", NULL, AV_DICT_MATCH_CASE);
    ey = FUNC3(in->metadata, "lavfi.rect.y", NULL, AV_DICT_MATCH_CASE);
    ew = FUNC3(in->metadata, "lavfi.rect.w", NULL, AV_DICT_MATCH_CASE);
    eh = FUNC3(in->metadata, "lavfi.rect.h", NULL, AV_DICT_MATCH_CASE);
    if (ex && ey && ew && eh) {
        x = FUNC8(ex->value, &xendptr, 10);
        y = FUNC8(ey->value, &yendptr, 10);
        w = FUNC8(ew->value, &wendptr, 10);
        h = FUNC8(eh->value, &hendptr, 10);
    }

    if (!xendptr || *xendptr || !yendptr || *yendptr ||
        !wendptr || *wendptr || !hendptr || *hendptr
    ) {
        return FUNC7(ctx->outputs[0], in);
    }

    if (x < 0) {
        w += x;
        x = 0;
    }
    if (y < 0) {
        h += y;
        y = 0;
    }
    w = FUNC1(w, in->width  - x);
    h = FUNC1(h, in->height - y);

    if (w > in->width || h > in->height || w <= 0 || h <= 0)
        return FUNC0(EINVAL);

    if (cover->cover_frame) {
        if (w != cover->cover_frame->width || h != cover->cover_frame->height)
            return FUNC0(EINVAL);
    }

    cover->width  = w;
    cover->height = h;

    x = FUNC2(x, 0, in->width  - w);
    y = FUNC2(y, 0, in->height - h);

    FUNC4(in);

    if (cover->mode == MODE_BLUR) {
        FUNC5 (cover, in, x, y);
    } else {
        FUNC6(cover, in, x, y);
    }
    return FUNC7(ctx->outputs[0], in);
}
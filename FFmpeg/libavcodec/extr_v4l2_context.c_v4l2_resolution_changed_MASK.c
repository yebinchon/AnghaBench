#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_7__ {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_9__ {TYPE_2__ pix; TYPE_1__ pix_mp; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; int /*<<< orphan*/  type; struct v4l2_format format; } ;
typedef  TYPE_4__ V4L2Context ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_format*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_format*) ; 

__attribute__((used)) static inline unsigned int FUNC5(V4L2Context *ctx, struct v4l2_format *fmt2)
{
    struct v4l2_format *fmt1 = &ctx->format;
    int ret =  FUNC0(ctx->type) ?
        fmt1->fmt.pix_mp.width != fmt2->fmt.pix_mp.width ||
        fmt1->fmt.pix_mp.height != fmt2->fmt.pix_mp.height
        :
        fmt1->fmt.pix.width != fmt2->fmt.pix.width ||
        fmt1->fmt.pix.height != fmt2->fmt.pix.height;

    if (ret)
        FUNC1(FUNC2(ctx), AV_LOG_DEBUG, "%s changed (%dx%d) -> (%dx%d)\n",
            ctx->name,
            FUNC4(fmt1), FUNC3(fmt1),
            FUNC4(fmt2), FUNC3(fmt2));

    return ret;
}
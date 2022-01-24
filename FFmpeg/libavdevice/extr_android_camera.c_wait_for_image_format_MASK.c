#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  got_image_format; int /*<<< orphan*/  exit; } ;
typedef  TYPE_1__ AndroidCameraCtx ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(AVFormatContext *avctx)
{
    AndroidCameraCtx *ctx = avctx->priv_data;

    while (!FUNC0(&ctx->got_image_format) && !FUNC0(&ctx->exit)) {
        //Wait until first frame arrived and actual image format was determined
        FUNC1(1000);
    }

    return FUNC0(&ctx->got_image_format);
}
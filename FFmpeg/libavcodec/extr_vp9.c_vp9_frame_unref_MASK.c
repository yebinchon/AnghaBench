#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * hwaccel_picture_private; int /*<<< orphan*/ * segmentation_map; int /*<<< orphan*/  hwaccel_priv_buf; int /*<<< orphan*/  extradata; int /*<<< orphan*/  tf; } ;
typedef  TYPE_1__ VP9Frame ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(AVCodecContext *avctx, VP9Frame *f)
{
    FUNC1(avctx, &f->tf);
    FUNC0(&f->extradata);
    FUNC0(&f->hwaccel_priv_buf);
    f->segmentation_map = NULL;
    f->hwaccel_picture_private = NULL;
}
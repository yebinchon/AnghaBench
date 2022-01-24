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
struct TYPE_4__ {int /*<<< orphan*/  slice_buffers; scalar_t__ slices_allocated; scalar_t__ nb_slices; scalar_t__ nb_param_buffers; } ;
typedef  TYPE_1__ VAAPIDecodePicture ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC2(AVCodecContext *avctx,
                           VAAPIDecodePicture *pic)
{
    FUNC1(avctx, pic);

    pic->nb_param_buffers = 0;
    pic->nb_slices        = 0;
    pic->slices_allocated = 0;
    FUNC0(&pic->slice_buffers);

    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int nb_slices; scalar_t__ output_buffer; TYPE_4__* roi; TYPE_4__* codec_picture_params; TYPE_4__* priv_data; TYPE_4__* slices; TYPE_4__* param_buffers; int /*<<< orphan*/  recon_image; int /*<<< orphan*/  input_image; scalar_t__ encode_issued; } ;
typedef  TYPE_1__ VAAPIEncodePicture ;
struct TYPE_7__ {struct TYPE_7__* codec_slice_params; struct TYPE_7__* priv_data; } ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 scalar_t__ VA_INVALID_ID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx,
                             VAAPIEncodePicture *pic)
{
    int i;

    if (pic->encode_issued)
        FUNC4(avctx, pic);

    for (i = 0; i < pic->nb_slices; i++) {
        if (pic->slices) {
            FUNC3(&pic->slices[i].priv_data);
            FUNC3(&pic->slices[i].codec_slice_params);
        }
    }
    FUNC3(&pic->codec_picture_params);

    FUNC1(&pic->input_image);
    FUNC1(&pic->recon_image);

    FUNC3(&pic->param_buffers);
    FUNC3(&pic->slices);
    // Output buffer should already be destroyed.
    FUNC0(pic->output_buffer == VA_INVALID_ID);

    FUNC3(&pic->priv_data);
    FUNC3(&pic->codec_picture_params);
    FUNC3(&pic->roi);

    FUNC2(pic);

    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* output_buffer; void* recon_surface; void* input_surface; void* priv_data; } ;
typedef  TYPE_2__ VAAPIEncodePicture ;
struct TYPE_10__ {TYPE_1__* codec; } ;
typedef  TYPE_3__ VAAPIEncodeContext ;
struct TYPE_11__ {TYPE_3__* priv_data; } ;
struct TYPE_8__ {int picture_priv_data_size; } ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 void* VA_INVALID_ID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static VAAPIEncodePicture *FUNC2(AVCodecContext *avctx)
{
    VAAPIEncodeContext *ctx = avctx->priv_data;
    VAAPIEncodePicture *pic;

    pic = FUNC1(sizeof(*pic));
    if (!pic)
        return NULL;

    if (ctx->codec->picture_priv_data_size > 0) {
        pic->priv_data = FUNC1(ctx->codec->picture_priv_data_size);
        if (!pic->priv_data) {
            FUNC0(&pic);
            return NULL;
        }
    }

    pic->input_surface = VA_INVALID_ID;
    pic->recon_surface = VA_INVALID_ID;
    pic->output_buffer = VA_INVALID_ID;

    return pic;
}
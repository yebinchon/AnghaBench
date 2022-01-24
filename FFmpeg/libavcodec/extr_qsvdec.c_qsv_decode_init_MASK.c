#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  FourCC; int /*<<< orphan*/  PicStruct; int /*<<< orphan*/  Height; int /*<<< orphan*/  Width; int /*<<< orphan*/  CropH; int /*<<< orphan*/  CropW; } ;
struct TYPE_12__ {TYPE_1__ FrameInfo; int /*<<< orphan*/  CodecProfile; int /*<<< orphan*/  CodecLevel; } ;
struct TYPE_13__ {TYPE_2__ mfx; } ;
typedef  TYPE_3__ mfxVideoParam ;
struct TYPE_15__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pix_fmt; int /*<<< orphan*/  hw_frames_ctx; int /*<<< orphan*/  field_order; int /*<<< orphan*/  profile; int /*<<< orphan*/  level; int /*<<< orphan*/  coded_height; int /*<<< orphan*/  coded_width; } ;
struct TYPE_14__ {int /*<<< orphan*/  pool; TYPE_1__ frame_info; int /*<<< orphan*/  session; } ;
typedef  TYPE_4__ QSVContext ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  av_buffer_allocz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_5__*,int,char*) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx, QSVContext *q, mfxVideoParam *param)
{
    int ret;

    avctx->width        = param->mfx.FrameInfo.CropW;
    avctx->height       = param->mfx.FrameInfo.CropH;
    avctx->coded_width  = param->mfx.FrameInfo.Width;
    avctx->coded_height = param->mfx.FrameInfo.Height;
    avctx->level        = param->mfx.CodecLevel;
    avctx->profile      = param->mfx.CodecProfile;
    avctx->field_order  = FUNC5(param->mfx.FrameInfo.PicStruct);
    avctx->pix_fmt      = FUNC4(param->mfx.FrameInfo.FourCC);

    ret = FUNC1(q->session, param);
    if (ret < 0)
        return FUNC6(avctx, ret,
                                  "Error initializing the MFX video decoder");

    q->frame_info = param->mfx.FrameInfo;

    if (!avctx->hw_frames_ctx)
        q->pool = FUNC2(FUNC3(avctx->pix_fmt,
                    FUNC0(avctx->width, 128), FUNC0(avctx->height, 64), 1), av_buffer_allocz);
    return 0;
}
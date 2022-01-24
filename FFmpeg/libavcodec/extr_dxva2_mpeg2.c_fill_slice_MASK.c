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
typedef  int /*<<< orphan*/  uint8_t ;
struct MpegEncContext {scalar_t__ picture_structure; int mb_y; int mb_width; scalar_t__ mb_x; } ;
struct TYPE_4__ {int wVerticalPosition; int dwSliceBitsInBuffer; unsigned int dwSliceDataLocation; scalar_t__ wMBbitOffset; int /*<<< orphan*/  wQuantizerScaleCode; scalar_t__ wBadSliceChopping; scalar_t__ wNumberMBsInSlice; scalar_t__ bReservedBits; scalar_t__ bStartCodeBitOffset; scalar_t__ wHorizontalPosition; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ DXVA_SliceInfo ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 scalar_t__ PICT_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(AVCodecContext *avctx,
                       const struct MpegEncContext *s,
                       DXVA_SliceInfo *slice,
                       unsigned position,
                       const uint8_t *buffer, unsigned size)
{
    int is_field = s->picture_structure != PICT_FRAME;
    GetBitContext gb;

    FUNC3(slice, 0, sizeof(*slice));
    slice->wHorizontalPosition = s->mb_x;
    slice->wVerticalPosition   = s->mb_y >> is_field;
    slice->dwSliceBitsInBuffer = 8 * size;
    slice->dwSliceDataLocation = position;
    slice->bStartCodeBitOffset = 0;
    slice->bReservedBits       = 0;
    /* XXX We store the index of the first MB and it will be fixed later */
    slice->wNumberMBsInSlice   = (s->mb_y >> is_field) * s->mb_width + s->mb_x;
    slice->wBadSliceChopping   = 0;

    FUNC2(&gb, &buffer[4], 8 * (size - 4));

    slice->wQuantizerScaleCode = FUNC0(&gb, 5);
    FUNC4(&gb);

    slice->wMBbitOffset        = 4 * 8 + FUNC1(&gb);
}
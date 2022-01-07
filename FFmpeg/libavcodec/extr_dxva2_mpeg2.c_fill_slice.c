
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct MpegEncContext {scalar_t__ picture_structure; int mb_y; int mb_width; scalar_t__ mb_x; } ;
struct TYPE_4__ {int wVerticalPosition; int dwSliceBitsInBuffer; unsigned int dwSliceDataLocation; scalar_t__ wMBbitOffset; int wQuantizerScaleCode; scalar_t__ wBadSliceChopping; scalar_t__ wNumberMBsInSlice; scalar_t__ bReservedBits; scalar_t__ bStartCodeBitOffset; scalar_t__ wHorizontalPosition; } ;
typedef int GetBitContext ;
typedef TYPE_1__ DXVA_SliceInfo ;
typedef int AVCodecContext ;


 scalar_t__ PICT_FRAME ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits_count (int *) ;
 int init_get_bits (int *,int const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int skip_1stop_8data_bits (int *) ;

__attribute__((used)) static void fill_slice(AVCodecContext *avctx,
                       const struct MpegEncContext *s,
                       DXVA_SliceInfo *slice,
                       unsigned position,
                       const uint8_t *buffer, unsigned size)
{
    int is_field = s->picture_structure != PICT_FRAME;
    GetBitContext gb;

    memset(slice, 0, sizeof(*slice));
    slice->wHorizontalPosition = s->mb_x;
    slice->wVerticalPosition = s->mb_y >> is_field;
    slice->dwSliceBitsInBuffer = 8 * size;
    slice->dwSliceDataLocation = position;
    slice->bStartCodeBitOffset = 0;
    slice->bReservedBits = 0;

    slice->wNumberMBsInSlice = (s->mb_y >> is_field) * s->mb_width + s->mb_x;
    slice->wBadSliceChopping = 0;

    init_get_bits(&gb, &buffer[4], 8 * (size - 4));

    slice->wQuantizerScaleCode = get_bits(&gb, 5);
    skip_1stop_8data_bits(&gb);

    slice->wMBbitOffset = 4 * 8 + get_bits_count(&gb);
}

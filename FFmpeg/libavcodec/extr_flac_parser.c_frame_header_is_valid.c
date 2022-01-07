
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetBitContext ;
typedef int FLACFrameInfo ;
typedef int AVCodecContext ;


 int MAX_FRAME_HEADER_SIZE ;
 int ff_flac_decode_frame_header (int *,int *,int *,int) ;
 int init_get_bits (int *,int const*,int) ;

__attribute__((used)) static int frame_header_is_valid(AVCodecContext *avctx, const uint8_t *buf,
                                 FLACFrameInfo *fi)
{
    GetBitContext gb;
    init_get_bits(&gb, buf, MAX_FRAME_HEADER_SIZE * 8);
    return !ff_flac_decode_frame_header(avctx, &gb, fi, 127);
}

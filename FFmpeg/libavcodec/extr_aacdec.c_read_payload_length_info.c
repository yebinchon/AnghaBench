
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct LATMContext {int frame_length_type; int frame_length; } ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int get_bits (int *,int) ;
 int get_bits_left (int *) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int read_payload_length_info(struct LATMContext *ctx, GetBitContext *gb)
{
    uint8_t tmp;

    if (ctx->frame_length_type == 0) {
        int mux_slot_length = 0;
        do {
            if (get_bits_left(gb) < 8)
                return AVERROR_INVALIDDATA;
            tmp = get_bits(gb, 8);
            mux_slot_length += tmp;
        } while (tmp == 255);
        return mux_slot_length;
    } else if (ctx->frame_length_type == 1) {
        return ctx->frame_length;
    } else if (ctx->frame_length_type == 3 ||
               ctx->frame_length_type == 5 ||
               ctx->frame_length_type == 7) {
        skip_bits(gb, 2);
    }
    return 0;
}

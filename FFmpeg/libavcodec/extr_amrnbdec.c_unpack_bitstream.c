
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef enum Mode { ____Placeholder_Mode } Mode ;
struct TYPE_3__ {int bad_frame_indicator; int frame; } ;
typedef int AMRNBFrame ;
typedef TYPE_1__ AMRContext ;


 int MODE_DTX ;
 int NO_DATA ;
 int N_MODES ;
 int * amr_unpacking_bitmaps_per_mode ;
 int ff_amr_bit_reorder (int *,int,int const*,int ) ;
 int* frame_sizes_nb ;

__attribute__((used)) static enum Mode unpack_bitstream(AMRContext *p, const uint8_t *buf,
                                  int buf_size)
{
    enum Mode mode;


    mode = buf[0] >> 3 & 0x0F;
    p->bad_frame_indicator = (buf[0] & 0x4) != 0x4;

    if (mode >= N_MODES || buf_size < frame_sizes_nb[mode] + 1) {
        return NO_DATA;
    }

    if (mode < MODE_DTX)
        ff_amr_bit_reorder((uint16_t *) &p->frame, sizeof(AMRNBFrame), buf + 1,
                           amr_unpacking_bitmaps_per_mode[mode]);

    return mode;
}

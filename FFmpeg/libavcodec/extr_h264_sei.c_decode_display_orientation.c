
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int present; int anticlockwise_rotation; void* vflip; void* hflip; } ;
typedef TYPE_1__ H264SEIDisplayOrientation ;
typedef int GetBitContext ;


 int get_bits (int *,int) ;
 void* get_bits1 (int *) ;
 int get_ue_golomb_long (int *) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static int decode_display_orientation(H264SEIDisplayOrientation *h,
                                      GetBitContext *gb)
{
    h->present = !get_bits1(gb);

    if (h->present) {
        h->hflip = get_bits1(gb);
        h->vflip = get_bits1(gb);

        h->anticlockwise_rotation = get_bits(gb, 16);
        get_ue_golomb_long(gb);
        skip_bits1(gb);
    }

    return 0;
}

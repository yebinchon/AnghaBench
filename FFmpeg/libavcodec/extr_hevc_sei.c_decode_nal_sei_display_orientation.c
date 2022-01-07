
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int present; int anticlockwise_rotation; void* vflip; void* hflip; } ;
typedef TYPE_1__ HEVCSEIDisplayOrientation ;
typedef int GetBitContext ;


 int get_bits (int *,int) ;
 void* get_bits1 (int *) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static int decode_nal_sei_display_orientation(HEVCSEIDisplayOrientation *s, GetBitContext *gb)
{
    s->present = !get_bits1(gb);

    if (s->present) {
        s->hflip = get_bits1(gb);
        s->vflip = get_bits1(gb);

        s->anticlockwise_rotation = get_bits(gb, 16);
        skip_bits1(gb);
    }

    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int present; void* min_luminance; void* max_luminance; void** white_point; void*** display_primaries; } ;
typedef TYPE_1__ HEVCSEIMasteringDisplay ;
typedef int GetBitContext ;


 void* get_bits (int *,int) ;
 void* get_bits_long (int *,int) ;

__attribute__((used)) static int decode_nal_sei_mastering_display_info(HEVCSEIMasteringDisplay *s, GetBitContext *gb)
{
    int i;

    for (i = 0; i < 3; i++) {
        s->display_primaries[i][0] = get_bits(gb, 16);
        s->display_primaries[i][1] = get_bits(gb, 16);
    }

    s->white_point[0] = get_bits(gb, 16);
    s->white_point[1] = get_bits(gb, 16);


    s->max_luminance = get_bits_long(gb, 32);
    s->min_luminance = get_bits_long(gb, 32);




    s->present = 2;
    return 0;
}

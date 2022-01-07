
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int present; void* max_pic_average_light_level; void* max_content_light_level; } ;
typedef TYPE_1__ HEVCSEIContentLight ;
typedef int GetBitContext ;


 void* get_bits_long (int *,int) ;

__attribute__((used)) static int decode_nal_sei_content_light_info(HEVCSEIContentLight *s, GetBitContext *gb)
{

    s->max_content_light_level = get_bits_long(gb, 16);
    s->max_pic_average_light_level = get_bits_long(gb, 16);



    s->present = 2;
    return 0;
}

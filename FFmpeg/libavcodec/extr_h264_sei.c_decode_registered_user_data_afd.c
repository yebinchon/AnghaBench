
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int present; void* active_format_description; } ;
typedef TYPE_1__ H264SEIAFD ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 void* get_bits (int *,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int decode_registered_user_data_afd(H264SEIAFD *h, GetBitContext *gb, int size)
{
    int flag;

    if (size-- < 1)
        return AVERROR_INVALIDDATA;
    skip_bits(gb, 1);
    flag = get_bits(gb, 1);
    skip_bits(gb, 6);

    if (flag) {
        if (size-- < 1)
            return AVERROR_INVALIDDATA;
        skip_bits(gb, 4);
        h->active_format_description = get_bits(gb, 4);
        h->present = 1;
    }

    return 0;
}

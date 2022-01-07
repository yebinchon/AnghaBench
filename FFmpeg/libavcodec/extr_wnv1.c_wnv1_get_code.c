
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int shift; int gb; } ;
typedef TYPE_1__ WNV1Context ;
struct TYPE_5__ {int table; } ;


 int CODE_VLC_BITS ;
 TYPE_3__ code_vlc ;
 int* ff_reverse ;
 size_t get_bits (int *,int) ;
 int get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static inline int wnv1_get_code(WNV1Context *w, int base_value)
{
    int v = get_vlc2(&w->gb, code_vlc.table, CODE_VLC_BITS, 1);

    if (v == 15)
        return ff_reverse[get_bits(&w->gb, 8 - w->shift)];
    else
        return base_value + ((v - 7U) << w->shift);
}

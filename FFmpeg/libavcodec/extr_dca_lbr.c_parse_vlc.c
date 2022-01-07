
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits; int table; } ;
typedef TYPE_1__ VLC ;
typedef int GetBitContext ;


 int get_bits (int *,int) ;
 int get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static inline int parse_vlc(GetBitContext *s, VLC *vlc, int max_depth)
{
    int v = get_vlc2(s, vlc->table, vlc->bits, max_depth);
    if (v > 0)
        return v - 1;

    return get_bits(s, get_bits(s, 3) + 1);
}

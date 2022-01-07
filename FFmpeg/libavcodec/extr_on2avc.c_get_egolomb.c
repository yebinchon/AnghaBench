
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int AV_LOG_WARNING ;
 int av_log (int *,int ,char*) ;
 scalar_t__ get_bits1 (int *) ;
 int get_bits_long (int *,int) ;

__attribute__((used)) static inline int get_egolomb(GetBitContext *gb)
{
    int v = 4;

    while (get_bits1(gb)) {
        v++;
        if (v > 30) {
            av_log(((void*)0), AV_LOG_WARNING, "Too large golomb code in get_egolomb.\n");
            v = 30;
            break;
        }
    }

    return (1 << v) + get_bits_long(gb, v);
}

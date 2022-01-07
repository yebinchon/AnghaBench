
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int GetBitContext ;


 int get_bits (int *,int) ;

__attribute__((used)) static inline int64_t leb128(GetBitContext *gb) {
    int64_t ret = 0;
    int i;

    for (i = 0; i < 8; i++) {
        int byte = get_bits(gb, 8);
        ret |= (int64_t)(byte & 0x7f) << (i * 7);
        if (!(byte & 0x80))
            break;
    }
    return ret;
}

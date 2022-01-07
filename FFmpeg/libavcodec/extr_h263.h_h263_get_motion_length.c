
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_BIT ;
 int** ff_mvtab ;

__attribute__((used)) static inline int h263_get_motion_length(int val, int f_code){
    int l, bit_size, code;

    if (val == 0) {
        return ff_mvtab[0][1];
    } else {
        bit_size = f_code - 1;

        l= INT_BIT - 6 - bit_size;
        val = (val<<l)>>l;
        val--;
        code = (val >> bit_size) + 1;

        return ff_mvtab[code][1] + 1 + bit_size;
    }
}

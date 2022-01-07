
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int get_bits1 (int *) ;

__attribute__((used)) static int input_code(GetBitContext* gb, int len) {
    int tmp_code = 0;
    int i;
    for (i = 0; i < len; ++i) {
        tmp_code |= get_bits1(gb) << i;
    }
    return tmp_code;
}

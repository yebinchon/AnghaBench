
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int get_ue_golomb (int *) ;

__attribute__((used)) static inline int get_se_golomb(GetBitContext *gb) {
    int v = get_ue_golomb(gb) + 1;
    int sign = -(v & 1);
    return ((v >> 1) ^ sign) - sign;
}

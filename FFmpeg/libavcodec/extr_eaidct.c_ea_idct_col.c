
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int IDCT_COL (int*,int const*) ;

__attribute__((used)) static inline void ea_idct_col(int16_t *dest, const int16_t *src) {
    if ((src[8]|src[16]|src[24]|src[32]|src[40]|src[48]|src[56])==0) {
        dest[0] =
        dest[8] =
        dest[16] =
        dest[24] =
        dest[32] =
        dest[40] =
        dest[48] =
        dest[56] = src[0];
    }else
        IDCT_COL(dest, src);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int idct (int *,int ,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void vp3_idct_put_c(uint8_t *dest , ptrdiff_t stride,
                           int16_t *block )
{
    idct(dest, stride, block, 1);
    memset(block, 0, sizeof(*block) * 64);
}

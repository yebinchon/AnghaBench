
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;


 int AV_RL32 (size_t*) ;
 int AV_WL32 (size_t*,int ) ;
 size_t* MD1 ;
 size_t* MD2 ;
 int tf_h0 (size_t*,int *,int) ;

__attribute__((used)) static uint32_t tf_h(uint32_t X, uint32_t L[4], int k)
{
    uint8_t y[4], l[4];
    AV_WL32(y, X);
    tf_h0(y, L, k);

    l[0] = y[0] ^ MD2[y[1]] ^ MD1[y[2]] ^ MD1[y[3]];
    l[1] = MD1[y[0]] ^ MD2[y[1]] ^ MD2[y[2]] ^ y[3];
    l[2] = MD2[y[0]] ^ MD1[y[1]] ^ y[2] ^ MD2[y[3]];
    l[3] = MD2[y[0]] ^ y[1] ^ MD2[y[2]] ^ MD1[y[3]];

    return AV_RL32(l);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ROT (int,int) ;

__attribute__((used)) static inline int mix_core(uint32_t multbl[][256], int a, int b, int c, int d)
{



    return multbl[0][a] ^ multbl[1][b] ^ multbl[2][c] ^ multbl[3][d];

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int FFABS (int) ;
 int FFMAX (int,int ) ;
 int** ilbc_gain ;

__attribute__((used)) static int16_t gain_dequantization(int index, int max_in, int stage)
{
    int16_t scale = FFMAX(1638, FFABS(max_in));

    return ((scale * ilbc_gain[stage][index]) + 8192) >> 14;
}

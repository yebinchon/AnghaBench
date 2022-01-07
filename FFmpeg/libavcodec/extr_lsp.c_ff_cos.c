
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint16_t ;
typedef size_t int16_t ;


 int av_assert2 (int) ;
 size_t* tab_cos ;

__attribute__((used)) static int16_t ff_cos(uint16_t arg)
{
    uint8_t offset= arg;
    uint8_t ind = arg >> 8;

    av_assert2(arg <= 0x3fff);

    return tab_cos[ind] + (offset * (tab_cos[ind+1] - tab_cos[ind]) >> 8);
}

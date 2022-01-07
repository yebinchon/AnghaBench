
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int av_memcpy_backptr (int *,int,int) ;

__attribute__((used)) static void fill_frame(uint16_t *pbuf, int buf_size, uint16_t color)
{
    if (buf_size--) {
        *pbuf++ = color;
        av_memcpy_backptr((uint8_t*)pbuf, 2, 2*buf_size);
    }
}

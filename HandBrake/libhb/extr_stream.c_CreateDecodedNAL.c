
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int* malloc (int) ;

__attribute__((used)) static void CreateDecodedNAL( uint8_t **dst, int *dst_len,
                              const uint8_t *src, int src_len )
{
    const uint8_t *end = &src[src_len];
    uint8_t *d = malloc( src_len );

    *dst = d;

    if( d )
    {
        while( src < end )
        {
            if( src < end - 3 && src[0] == 0x00 && src[1] == 0x00 &&
                src[2] == 0x01 )
            {

                break;
            }
            if( src < end - 3 && src[0] == 0x00 && src[1] == 0x00 &&
                src[2] == 0x03 )
            {
                *d++ = 0x00;
                *d++ = 0x00;

                src += 3;
                continue;
            }
            *d++ = *src++;
        }
    }
    *dst_len = d - *dst;
}

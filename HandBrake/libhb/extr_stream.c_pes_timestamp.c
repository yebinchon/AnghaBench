
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int int64_t ;



__attribute__((used)) static int64_t pes_timestamp( const uint8_t *buf )
{
    int64_t ts;

    ts = ( (uint64_t) ( buf[0] & 0x0e ) << 29 ) +
                       ( buf[1] << 22 ) +
                     ( ( buf[2] >> 1 ) << 15 ) +
                       ( buf[3] << 7 ) +
                       ( buf[4] >> 1 );
    return ts;
}

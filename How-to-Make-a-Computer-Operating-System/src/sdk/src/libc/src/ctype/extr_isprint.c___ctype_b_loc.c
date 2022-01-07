
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int isprint( int c ) {
    c &= 0x7F;
    return ( ( c >= 0x20 ) && ( c < 0x7F ) );
}

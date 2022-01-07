
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isupper (int) ;

int tolower( int c ) {
    if ( isupper( c ) ) {
        return c | 0x20;
    } else {
        return c;
    }
}

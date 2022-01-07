
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ islower (int) ;
 scalar_t__ isupper (int) ;

int isalpha( int c ) {
    return ( islower( c ) || isupper( c ) );
}

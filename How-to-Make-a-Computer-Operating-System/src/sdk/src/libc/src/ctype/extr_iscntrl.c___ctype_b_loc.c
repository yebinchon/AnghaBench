
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int iscntrl( int c ) {
    return ( ( ( unsigned int )c < 32u ) ||
             ( c == 127 ) );
}

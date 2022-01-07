
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isprint (int) ;

int isgraph( int c ) {
    if ( c == ' ' ) {
        return 0;
    }

    return isprint( c );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t strlen( const char* s ) {
    size_t r = 0;

    for( ; *s++ != 0; r++ ) { }

    return r;
}

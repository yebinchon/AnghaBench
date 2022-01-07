
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double strtod (char const*,char**) ;

double atof( const char* s ) {
    return strtod( s, ( char** )((void*)0) );
}

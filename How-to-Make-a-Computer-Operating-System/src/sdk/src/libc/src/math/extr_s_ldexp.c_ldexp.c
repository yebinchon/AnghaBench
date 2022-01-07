
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 int errno ;
 int finite (double) ;
 double scalbn (double,int) ;

double ldexp( double value, int exp ) {
    if ( !finite(value) || value == 0.0 ) return value;
    value = scalbn(value,exp);
    if ( !finite(value) || value == 0.0 ) errno = ERANGE;
    return value;
}

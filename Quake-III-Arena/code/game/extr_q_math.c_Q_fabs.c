
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float Q_fabs( float f ) {
 int tmp = * ( int * ) &f;
 tmp &= 0x7FFFFFFF;
 return * ( float * ) &tmp;
}

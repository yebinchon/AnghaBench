
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_rand (int*) ;

float Q_random( int *seed ) {
 return ( Q_rand( seed ) & 0xffff ) / (float)0x10000;
}

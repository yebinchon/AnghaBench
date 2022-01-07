
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_threshold ;

void mbedtls_debug_set_threshold( int threshold )
{
    debug_threshold = threshold;
}

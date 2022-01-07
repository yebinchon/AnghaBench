
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s; int * p; scalar_t__ n; } ;
typedef TYPE_1__ mbedtls_mpi ;



void mbedtls_mpi_init( mbedtls_mpi *X )
{
    if( X == ((void*)0) )
        return;

    X->s = 1;
    X->n = 0;
    X->p = ((void*)0);
}

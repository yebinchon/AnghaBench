
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; int havege_data; } ;
typedef TYPE_1__ mbedtls_entropy_context ;


 int mbedtls_havege_free (int *) ;
 int mbedtls_mutex_free (int *) ;
 int mbedtls_zeroize (TYPE_1__*,int) ;

void mbedtls_entropy_free( mbedtls_entropy_context *ctx )
{






    mbedtls_zeroize( ctx, sizeof( mbedtls_entropy_context ) );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ mbedtls_entropy_context ;


 int MBEDTLS_ENTROPY_SOURCE_MANUAL ;
 int MBEDTLS_ERR_THREADING_MUTEX_ERROR ;
 int entropy_update (TYPE_1__*,int ,unsigned char const*,size_t) ;
 int mbedtls_mutex_lock (int *) ;
 scalar_t__ mbedtls_mutex_unlock (int *) ;

int mbedtls_entropy_update_manual( mbedtls_entropy_context *ctx,
                           const unsigned char *data, size_t len )
{
    int ret;






    ret = entropy_update( ctx, MBEDTLS_ENTROPY_SOURCE_MANUAL, data, len );






    return( ret );
}

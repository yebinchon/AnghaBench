
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cipher; } ;
typedef TYPE_1__ mbedtls_ssl_ciphersuite_t ;


 int MAX_CIPHERSUITES ;
 scalar_t__ MBEDTLS_CIPHER_ARC4_128 ;
 int* ciphersuite_preference ;
 TYPE_1__* mbedtls_ssl_ciphersuite_from_id (int const) ;
 int ssl_ciphersuites_supported_init ;
 int* supported_ciphersuites ;

const int *mbedtls_ssl_list_ciphersuites( void )
{




    if( ssl_ciphersuites_supported_init == 0 )
    {
        const int *p;
        int *q;

        for( p = ciphersuite_preference, q = supported_ciphersuites;
             *p != 0 && q < supported_ciphersuites + MAX_CIPHERSUITES - 1;
             p++ )
        {





            if( mbedtls_ssl_ciphersuite_from_id( *p ) != ((void*)0) )

                *(q++) = *p;
        }
        *q = 0;

        ssl_ciphersuites_supported_init = 1;
    }

    return( supported_ciphersuites );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ version; struct TYPE_7__* next; } ;
typedef TYPE_1__ mbedtls_x509_crt ;


 int MBEDTLS_ERR_X509_ALLOC_FAILED ;
 int MBEDTLS_ERR_X509_BAD_INPUT_DATA ;
 TYPE_1__* mbedtls_calloc (int,int) ;
 int mbedtls_free (TYPE_1__*) ;
 int mbedtls_x509_crt_init (TYPE_1__*) ;
 int x509_crt_parse_der_core (TYPE_1__*,unsigned char const*,size_t) ;

int mbedtls_x509_crt_parse_der( mbedtls_x509_crt *chain, const unsigned char *buf,
                        size_t buflen )
{
    int ret;
    mbedtls_x509_crt *crt = chain, *prev = ((void*)0);




    if( crt == ((void*)0) || buf == ((void*)0) )
        return( MBEDTLS_ERR_X509_BAD_INPUT_DATA );

    while( crt->version != 0 && crt->next != ((void*)0) )
    {
        prev = crt;
        crt = crt->next;
    }




    if( crt->version != 0 && crt->next == ((void*)0) )
    {
        crt->next = mbedtls_calloc( 1, sizeof( mbedtls_x509_crt ) );

        if( crt->next == ((void*)0) )
            return( MBEDTLS_ERR_X509_ALLOC_FAILED );

        prev = crt;
        mbedtls_x509_crt_init( crt->next );
        crt = crt->next;
    }

    if( ( ret = x509_crt_parse_der_core( crt, buf, buflen ) ) != 0 )
    {
        if( prev )
            prev->next = ((void*)0);

        if( crt != chain )
            mbedtls_free( crt );

        return( ret );
    }

    return( 0 );
}

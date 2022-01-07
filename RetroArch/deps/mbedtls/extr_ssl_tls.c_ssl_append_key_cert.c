
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mbedtls_x509_crt ;
struct TYPE_3__ {struct TYPE_3__* next; int * key; int * cert; } ;
typedef TYPE_1__ mbedtls_ssl_key_cert ;
typedef int mbedtls_pk_context ;


 int MBEDTLS_ERR_SSL_ALLOC_FAILED ;
 scalar_t__ mbedtls_calloc (int,int) ;

__attribute__((used)) static int ssl_append_key_cert( mbedtls_ssl_key_cert **head,
                                mbedtls_x509_crt *cert,
                                mbedtls_pk_context *key )
{
    mbedtls_ssl_key_cert *keycert = (mbedtls_ssl_key_cert*)
       mbedtls_calloc( 1, sizeof( mbedtls_ssl_key_cert ) );
    if( keycert == ((void*)0) )
        return( MBEDTLS_ERR_SSL_ALLOC_FAILED );

    keycert->cert = cert;
    keycert->key = key;
    keycert->next = ((void*)0);


    if( *head == ((void*)0) )
    {
        *head = keycert;
    }
    else
    {
        mbedtls_ssl_key_cert *cur = *head;
        while( cur->next != ((void*)0) )
            cur = cur->next;
        cur->next = keycert;
    }

    return( 0 );
}

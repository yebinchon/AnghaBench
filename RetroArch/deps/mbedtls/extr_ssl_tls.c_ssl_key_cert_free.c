
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ mbedtls_ssl_key_cert ;


 int mbedtls_free (TYPE_1__*) ;

__attribute__((used)) static void ssl_key_cert_free( mbedtls_ssl_key_cert *key_cert )
{
    mbedtls_ssl_key_cert *cur = key_cert, *next;

    while( cur != ((void*)0) )
    {
        next = cur->next;
        mbedtls_free( cur );
        cur = next;
    }
}

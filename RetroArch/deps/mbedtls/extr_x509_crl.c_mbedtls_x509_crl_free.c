
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int len; TYPE_4__* p; } ;
struct TYPE_11__ {TYPE_4__* next; } ;
struct TYPE_10__ {TYPE_4__* next; } ;
struct TYPE_13__ {struct TYPE_13__* next; TYPE_3__ raw; TYPE_2__ entry; TYPE_1__ issuer; struct TYPE_13__* sig_opts; } ;
typedef TYPE_4__ mbedtls_x509_name ;
typedef TYPE_4__ mbedtls_x509_crl_entry ;
typedef TYPE_4__ mbedtls_x509_crl ;


 int mbedtls_free (TYPE_4__*) ;
 int mbedtls_zeroize (TYPE_4__*,int) ;

void mbedtls_x509_crl_free( mbedtls_x509_crl *crl )
{
    mbedtls_x509_crl *crl_cur = crl;
    mbedtls_x509_crl *crl_prv;
    mbedtls_x509_name *name_cur;
    mbedtls_x509_name *name_prv;
    mbedtls_x509_crl_entry *entry_cur;
    mbedtls_x509_crl_entry *entry_prv;

    if( crl == ((void*)0) )
        return;

    do
    {




        name_cur = crl_cur->issuer.next;
        while( name_cur != ((void*)0) )
        {
            name_prv = name_cur;
            name_cur = name_cur->next;
            mbedtls_zeroize( name_prv, sizeof( mbedtls_x509_name ) );
            mbedtls_free( name_prv );
        }

        entry_cur = crl_cur->entry.next;
        while( entry_cur != ((void*)0) )
        {
            entry_prv = entry_cur;
            entry_cur = entry_cur->next;
            mbedtls_zeroize( entry_prv, sizeof( mbedtls_x509_crl_entry ) );
            mbedtls_free( entry_prv );
        }

        if( crl_cur->raw.p != ((void*)0) )
        {
            mbedtls_zeroize( crl_cur->raw.p, crl_cur->raw.len );
            mbedtls_free( crl_cur->raw.p );
        }

        crl_cur = crl_cur->next;
    }
    while( crl_cur != ((void*)0) );

    crl_cur = crl;
    do
    {
        crl_prv = crl_cur;
        crl_cur = crl_cur->next;

        mbedtls_zeroize( crl_prv, sizeof( mbedtls_x509_crl ) );
        if( crl_prv != crl )
            mbedtls_free( crl_prv );
    }
    while( crl_cur != ((void*)0) );
}

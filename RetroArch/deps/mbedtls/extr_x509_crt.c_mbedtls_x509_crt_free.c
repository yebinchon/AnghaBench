
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int len; TYPE_6__* p; } ;
struct TYPE_15__ {TYPE_6__* next; } ;
struct TYPE_14__ {TYPE_6__* next; } ;
struct TYPE_13__ {TYPE_6__* next; } ;
struct TYPE_12__ {TYPE_6__* next; } ;
struct TYPE_17__ {struct TYPE_17__* next; TYPE_5__ raw; TYPE_4__ subject_alt_names; TYPE_3__ ext_key_usage; TYPE_2__ subject; TYPE_1__ issuer; struct TYPE_17__* sig_opts; int pk; } ;
typedef TYPE_6__ mbedtls_x509_sequence ;
typedef TYPE_6__ mbedtls_x509_name ;
typedef TYPE_6__ mbedtls_x509_crt ;


 int mbedtls_free (TYPE_6__*) ;
 int mbedtls_pk_free (int *) ;
 int mbedtls_zeroize (TYPE_6__*,int) ;

void mbedtls_x509_crt_free( mbedtls_x509_crt *crt )
{
    mbedtls_x509_crt *cert_cur = crt;
    mbedtls_x509_crt *cert_prv;
    mbedtls_x509_name *name_cur;
    mbedtls_x509_name *name_prv;
    mbedtls_x509_sequence *seq_cur;
    mbedtls_x509_sequence *seq_prv;

    if( crt == ((void*)0) )
        return;

    do
    {
        mbedtls_pk_free( &cert_cur->pk );





        name_cur = cert_cur->issuer.next;
        while( name_cur != ((void*)0) )
        {
            name_prv = name_cur;
            name_cur = name_cur->next;
            mbedtls_zeroize( name_prv, sizeof( mbedtls_x509_name ) );
            mbedtls_free( name_prv );
        }

        name_cur = cert_cur->subject.next;
        while( name_cur != ((void*)0) )
        {
            name_prv = name_cur;
            name_cur = name_cur->next;
            mbedtls_zeroize( name_prv, sizeof( mbedtls_x509_name ) );
            mbedtls_free( name_prv );
        }

        seq_cur = cert_cur->ext_key_usage.next;
        while( seq_cur != ((void*)0) )
        {
            seq_prv = seq_cur;
            seq_cur = seq_cur->next;
            mbedtls_zeroize( seq_prv, sizeof( mbedtls_x509_sequence ) );
            mbedtls_free( seq_prv );
        }

        seq_cur = cert_cur->subject_alt_names.next;
        while( seq_cur != ((void*)0) )
        {
            seq_prv = seq_cur;
            seq_cur = seq_cur->next;
            mbedtls_zeroize( seq_prv, sizeof( mbedtls_x509_sequence ) );
            mbedtls_free( seq_prv );
        }

        if( cert_cur->raw.p != ((void*)0) )
        {
            mbedtls_zeroize( cert_cur->raw.p, cert_cur->raw.len );
            mbedtls_free( cert_cur->raw.p );
        }

        cert_cur = cert_cur->next;
    }
    while( cert_cur != ((void*)0) );

    cert_cur = crt;
    do
    {
        cert_prv = cert_cur;
        cert_cur = cert_cur->next;

        mbedtls_zeroize( cert_prv, sizeof( mbedtls_x509_crt ) );
        if( cert_prv != crt )
            mbedtls_free( cert_prv );
    }
    while( cert_cur != ((void*)0) );
}

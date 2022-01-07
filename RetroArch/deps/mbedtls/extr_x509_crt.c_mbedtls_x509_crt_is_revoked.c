
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ len; int p; } ;
struct TYPE_10__ {TYPE_1__ serial; } ;
typedef TYPE_3__ mbedtls_x509_crt ;
struct TYPE_9__ {scalar_t__ len; int p; } ;
struct TYPE_11__ {struct TYPE_11__* next; int revocation_date; TYPE_2__ serial; } ;
typedef TYPE_4__ mbedtls_x509_crl_entry ;
struct TYPE_12__ {TYPE_4__ entry; } ;
typedef TYPE_5__ mbedtls_x509_crl ;


 scalar_t__ mbedtls_x509_time_is_past (int *) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

int mbedtls_x509_crt_is_revoked( const mbedtls_x509_crt *crt, const mbedtls_x509_crl *crl )
{
    const mbedtls_x509_crl_entry *cur = &crl->entry;

    while( cur != ((void*)0) && cur->serial.len != 0 )
    {
        if( crt->serial.len == cur->serial.len &&
            memcmp( crt->serial.p, cur->serial.p, crt->serial.len ) == 0 )
        {
            if( mbedtls_x509_time_is_past( &cur->revocation_date ) )
                return( 1 );
        }

        cur = cur->next;
    }

    return( 0 );
}

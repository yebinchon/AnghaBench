
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int sec; int min; int hour; int day; int mon; int year; } ;
struct TYPE_10__ {scalar_t__ len; } ;
struct TYPE_12__ {struct TYPE_12__* next; TYPE_4__ revocation_date; int serial; TYPE_3__ raw; } ;
typedef TYPE_5__ mbedtls_x509_crl_entry ;
struct TYPE_9__ {int sec; int min; int hour; int day; int mon; int year; } ;
struct TYPE_8__ {int sec; int min; int hour; int day; int mon; int year; } ;
struct TYPE_13__ {int sig_opts; int sig_md; int sig_pk; int sig_oid; TYPE_5__ entry; TYPE_2__ next_update; TYPE_1__ this_update; int issuer; int version; } ;
typedef TYPE_6__ mbedtls_x509_crl ;


 int MBEDTLS_X509_SAFE_SNPRINTF ;
 int mbedtls_snprintf (char*,size_t,char*,...) ;
 int mbedtls_x509_dn_gets (char*,size_t,int *) ;
 int mbedtls_x509_serial_gets (char*,size_t,int *) ;
 int mbedtls_x509_sig_alg_gets (char*,size_t,int *,int ,int ,int ) ;

int mbedtls_x509_crl_info( char *buf, size_t size, const char *prefix,
                   const mbedtls_x509_crl *crl )
{
    int ret;
    size_t n;
    char *p;
    const mbedtls_x509_crl_entry *entry;

    p = buf;
    n = size;

    ret = mbedtls_snprintf( p, n, "%sCRL version   : %d",
                               prefix, crl->version );
    MBEDTLS_X509_SAFE_SNPRINTF;

    ret = mbedtls_snprintf( p, n, "\n%sissuer name   : ", prefix );
    MBEDTLS_X509_SAFE_SNPRINTF;
    ret = mbedtls_x509_dn_gets( p, n, &crl->issuer );
    MBEDTLS_X509_SAFE_SNPRINTF;

    ret = mbedtls_snprintf( p, n, "\n%sthis update   : " "%04d-%02d-%02d %02d:%02d:%02d", prefix,

                   crl->this_update.year, crl->this_update.mon,
                   crl->this_update.day, crl->this_update.hour,
                   crl->this_update.min, crl->this_update.sec );
    MBEDTLS_X509_SAFE_SNPRINTF;

    ret = mbedtls_snprintf( p, n, "\n%snext update   : " "%04d-%02d-%02d %02d:%02d:%02d", prefix,

                   crl->next_update.year, crl->next_update.mon,
                   crl->next_update.day, crl->next_update.hour,
                   crl->next_update.min, crl->next_update.sec );
    MBEDTLS_X509_SAFE_SNPRINTF;

    entry = &crl->entry;

    ret = mbedtls_snprintf( p, n, "\n%sRevoked certificates:",
                               prefix );
    MBEDTLS_X509_SAFE_SNPRINTF;

    while( entry != ((void*)0) && entry->raw.len != 0 )
    {
        ret = mbedtls_snprintf( p, n, "\n%sserial number: ",
                               prefix );
        MBEDTLS_X509_SAFE_SNPRINTF;

        ret = mbedtls_x509_serial_gets( p, n, &entry->serial );
        MBEDTLS_X509_SAFE_SNPRINTF;

        ret = mbedtls_snprintf( p, n, " revocation date: " "%04d-%02d-%02d %02d:%02d:%02d",

                   entry->revocation_date.year, entry->revocation_date.mon,
                   entry->revocation_date.day, entry->revocation_date.hour,
                   entry->revocation_date.min, entry->revocation_date.sec );
        MBEDTLS_X509_SAFE_SNPRINTF;

        entry = entry->next;
    }

    ret = mbedtls_snprintf( p, n, "\n%ssigned using  : ", prefix );
    MBEDTLS_X509_SAFE_SNPRINTF;

    ret = mbedtls_x509_sig_alg_gets( p, n, &crl->sig_oid, crl->sig_pk, crl->sig_md,
                             crl->sig_opts );
    MBEDTLS_X509_SAFE_SNPRINTF;

    ret = mbedtls_snprintf( p, n, "\n" );
    MBEDTLS_X509_SAFE_SNPRINTF;

    return( (int) ( size - n ) );
}

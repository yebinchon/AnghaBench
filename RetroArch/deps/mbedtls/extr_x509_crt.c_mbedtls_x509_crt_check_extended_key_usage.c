
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t len; int p; } ;
struct TYPE_6__ {TYPE_3__ buf; struct TYPE_6__* next; } ;
typedef TYPE_1__ mbedtls_x509_sequence ;
struct TYPE_7__ {int ext_types; TYPE_1__ ext_key_usage; } ;
typedef TYPE_2__ mbedtls_x509_crt ;
typedef TYPE_3__ mbedtls_x509_buf ;


 int MBEDTLS_ERR_X509_BAD_INPUT_DATA ;
 int MBEDTLS_OID_ANY_EXTENDED_KEY_USAGE ;
 scalar_t__ MBEDTLS_OID_CMP (int ,TYPE_3__ const*) ;
 int MBEDTLS_X509_EXT_EXTENDED_KEY_USAGE ;
 scalar_t__ memcmp (int ,char const*,size_t) ;

int mbedtls_x509_crt_check_extended_key_usage( const mbedtls_x509_crt *crt,
                                       const char *usage_oid,
                                       size_t usage_len )
{
    const mbedtls_x509_sequence *cur;


    if( ( crt->ext_types & MBEDTLS_X509_EXT_EXTENDED_KEY_USAGE ) == 0 )
        return( 0 );




    for( cur = &crt->ext_key_usage; cur != ((void*)0); cur = cur->next )
    {
        const mbedtls_x509_buf *cur_oid = &cur->buf;

        if( cur_oid->len == usage_len &&
            memcmp( cur_oid->p, usage_oid, usage_len ) == 0 )
        {
            return( 0 );
        }

        if( MBEDTLS_OID_CMP( MBEDTLS_OID_ANY_EXTENDED_KEY_USAGE, cur_oid ) == 0 )
            return( 0 );
    }

    return( MBEDTLS_ERR_X509_BAD_INPUT_DATA );
}

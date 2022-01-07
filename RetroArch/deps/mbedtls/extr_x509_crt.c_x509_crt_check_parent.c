
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; int p; } ;
struct TYPE_7__ {int version; int ca_istrue; TYPE_1__ raw; int subject; int issuer; } ;
typedef TYPE_2__ mbedtls_x509_crt ;


 int MBEDTLS_X509_KU_KEY_CERT_SIGN ;
 scalar_t__ mbedtls_x509_crt_check_key_usage (TYPE_2__ const*,int ) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 scalar_t__ x509_name_cmp (int *,int *) ;

__attribute__((used)) static int x509_crt_check_parent( const mbedtls_x509_crt *child,
                                  const mbedtls_x509_crt *parent,
                                  int top, int bottom )
{
    int need_ca_bit;


    if( x509_name_cmp( &child->issuer, &parent->subject ) != 0 )
        return( -1 );


    need_ca_bit = 1;


    if( top && parent->version < 3 )
        need_ca_bit = 0;


    if( top && bottom &&
        child->raw.len == parent->raw.len &&
        memcmp( child->raw.p, parent->raw.p, child->raw.len ) == 0 )
    {
        need_ca_bit = 0;
    }

    if( need_ca_bit && ! parent->ca_istrue )
        return( -1 );
    return( 0 );
}

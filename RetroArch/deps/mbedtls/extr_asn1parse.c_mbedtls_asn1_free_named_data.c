
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int p; } ;
struct TYPE_6__ {int p; } ;
struct TYPE_8__ {TYPE_2__ val; TYPE_1__ oid; } ;
typedef TYPE_3__ mbedtls_asn1_named_data ;


 int mbedtls_free (int ) ;
 int mbedtls_zeroize (TYPE_3__*,int) ;

void mbedtls_asn1_free_named_data( mbedtls_asn1_named_data *cur )
{
    if( cur == ((void*)0) )
        return;

    mbedtls_free( cur->oid.p );
    mbedtls_free( cur->val.p );

    mbedtls_zeroize( cur, sizeof( mbedtls_asn1_named_data ) );
}

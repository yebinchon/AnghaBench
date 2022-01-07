
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; int* p; } ;
typedef TYPE_1__ mbedtls_asn1_buf ;


 int MBEDTLS_ERR_OID_BUF_TOO_SMALL ;
 int OID_SAFE_SNPRINTF ;
 int mbedtls_snprintf (char*,size_t,char*,unsigned int,...) ;

int mbedtls_oid_get_numeric_string( char *buf, size_t size,
                            const mbedtls_asn1_buf *oid )
{
    int ret;
    size_t i, n;
    unsigned int value;
    char *p;

    p = buf;
    n = size;


    if( oid->len > 0 )
    {
        ret = mbedtls_snprintf( p, n, "%d.%d", oid->p[0] / 40, oid->p[0] % 40 );
        OID_SAFE_SNPRINTF;
    }

    value = 0;
    for( i = 1; i < oid->len; i++ )
    {

        if( ( ( value << 7 ) >> 7 ) != value )
            return( MBEDTLS_ERR_OID_BUF_TOO_SMALL );

        value <<= 7;
        value += oid->p[i] & 0x7F;

        if( !( oid->p[i] & 0x80 ) )
        {

            ret = mbedtls_snprintf( p, n, ".%d", value );
            OID_SAFE_SNPRINTF;
            value = 0;
        }
    }

    return( (int) ( size - n ) );
}

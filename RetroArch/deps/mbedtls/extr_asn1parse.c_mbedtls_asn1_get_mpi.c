
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_mpi ;


 int MBEDTLS_ASN1_INTEGER ;
 int mbedtls_asn1_get_tag (unsigned char**,unsigned char const*,size_t*,int ) ;
 int mbedtls_mpi_read_binary (int *,unsigned char*,size_t) ;

int mbedtls_asn1_get_mpi( unsigned char **p,
                  const unsigned char *end,
                  mbedtls_mpi *X )
{
    int ret;
    size_t len;

    if( ( ret = mbedtls_asn1_get_tag( p, end, &len, MBEDTLS_ASN1_INTEGER ) ) != 0 )
        return( ret );

    ret = mbedtls_mpi_read_binary( X, *p, len );

    *p += len;

    return( ret );
}

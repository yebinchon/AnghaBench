
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ecp_group_id ;
typedef int mbedtls_ecp_group ;
typedef int mbedtls_asn1_buf ;


 int mbedtls_ecp_group_free (int *) ;
 int mbedtls_ecp_group_init (int *) ;
 int pk_group_from_specified (int const*,int *) ;
 int pk_group_id_from_group (int *,int *) ;

__attribute__((used)) static int pk_group_id_from_specified( const mbedtls_asn1_buf *params,
                                       mbedtls_ecp_group_id *grp_id )
{
    int ret;
    mbedtls_ecp_group grp;

    mbedtls_ecp_group_init( &grp );

    if( ( ret = pk_group_from_specified( params, &grp ) ) != 0 )
        goto cleanup;

    ret = pk_group_id_from_group( &grp, grp_id );

cleanup:
    mbedtls_ecp_group_free( &grp );

    return( ret );
}

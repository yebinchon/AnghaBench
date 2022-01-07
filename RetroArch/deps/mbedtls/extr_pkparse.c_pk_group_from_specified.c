
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int Z; int Y; int X; } ;
struct TYPE_7__ {int N; void* nbits; TYPE_6__ G; int P; int B; int A; void* pbits; } ;
typedef TYPE_1__ mbedtls_ecp_group ;
struct TYPE_8__ {unsigned char* p; size_t len; } ;
typedef TYPE_2__ mbedtls_asn1_buf ;


 int MBEDTLS_ASN1_BIT_STRING ;
 int MBEDTLS_ASN1_CONSTRUCTED ;
 int MBEDTLS_ASN1_OCTET_STRING ;
 int MBEDTLS_ASN1_OID ;
 int MBEDTLS_ASN1_SEQUENCE ;
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ;
 int MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE ;
 int MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE ;
 int MBEDTLS_ERR_PK_KEY_INVALID_FORMAT ;
 int MBEDTLS_OID_ANSI_X9_62_PRIME_FIELD ;
 size_t MBEDTLS_OID_SIZE (int ) ;
 int mbedtls_asn1_get_int (unsigned char**,unsigned char const* const,int*) ;
 int mbedtls_asn1_get_mpi (unsigned char**,unsigned char const* const,int *) ;
 int mbedtls_asn1_get_tag (unsigned char**,unsigned char const* const,size_t*,int) ;
 int mbedtls_ecp_point_read_binary (TYPE_1__*,TYPE_6__*,unsigned char const*,size_t) ;
 void* mbedtls_mpi_bitlen (int *) ;
 scalar_t__ mbedtls_mpi_lset (int *,int) ;
 int mbedtls_mpi_read_binary (int *,unsigned char*,size_t) ;
 int mbedtls_mpi_size (int *) ;
 scalar_t__ memcmp (unsigned char*,int ,size_t) ;

__attribute__((used)) static int pk_group_from_specified( const mbedtls_asn1_buf *params, mbedtls_ecp_group *grp )
{
    int ret;
    unsigned char *p = params->p;
    const unsigned char * const end = params->p + params->len;
    const unsigned char *end_field, *end_curve;
    size_t len;
    int ver;


    if( ( ret = mbedtls_asn1_get_int( &p, end, &ver ) ) != 0 )
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );

    if( ver < 1 || ver > 3 )
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT );







    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
        return( ret );

    end_field = p + len;
    if( ( ret = mbedtls_asn1_get_tag( &p, end_field, &len, MBEDTLS_ASN1_OID ) ) != 0 )
        return( ret );

    if( len != MBEDTLS_OID_SIZE( MBEDTLS_OID_ANSI_X9_62_PRIME_FIELD ) ||
        memcmp( p, MBEDTLS_OID_ANSI_X9_62_PRIME_FIELD, len ) != 0 )
    {
        return( MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE );
    }

    p += len;


    if( ( ret = mbedtls_asn1_get_mpi( &p, end_field, &grp->P ) ) != 0 )
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );

    grp->pbits = mbedtls_mpi_bitlen( &grp->P );

    if( p != end_field )
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
        return( ret );

    end_curve = p + len;





    if( ( ret = mbedtls_asn1_get_tag( &p, end_curve, &len, MBEDTLS_ASN1_OCTET_STRING ) ) != 0 ||
        ( ret = mbedtls_mpi_read_binary( &grp->A, p, len ) ) != 0 )
    {
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    p += len;

    if( ( ret = mbedtls_asn1_get_tag( &p, end_curve, &len, MBEDTLS_ASN1_OCTET_STRING ) ) != 0 ||
        ( ret = mbedtls_mpi_read_binary( &grp->B, p, len ) ) != 0 )
    {
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    p += len;


    if( ( ret = mbedtls_asn1_get_tag( &p, end_curve, &len, MBEDTLS_ASN1_BIT_STRING ) ) == 0 )
        p += len;

    if( p != end_curve )
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );




    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len, MBEDTLS_ASN1_OCTET_STRING ) ) != 0 )
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );

    if( ( ret = mbedtls_ecp_point_read_binary( grp, &grp->G,
                                      ( const unsigned char *) p, len ) ) != 0 )
    {




        if( ret != MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE ||
            ( p[0] != 0x02 && p[0] != 0x03 ) ||
            len != mbedtls_mpi_size( &grp->P ) + 1 ||
            mbedtls_mpi_read_binary( &grp->G.X, p + 1, len - 1 ) != 0 ||
            mbedtls_mpi_lset( &grp->G.Y, p[0] - 2 ) != 0 ||
            mbedtls_mpi_lset( &grp->G.Z, 1 ) != 0 )
        {
            return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT );
        }
    }

    p += len;




    if( ( ret = mbedtls_asn1_get_mpi( &p, end, &grp->N ) ) != 0 )
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );

    grp->nbits = mbedtls_mpi_bitlen( &grp->N );





    return( 0 );
}

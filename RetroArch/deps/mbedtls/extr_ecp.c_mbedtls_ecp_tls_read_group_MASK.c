#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  mbedtls_ecp_group ;
struct TYPE_3__ {int /*<<< orphan*/  grp_id; } ;
typedef  TYPE_1__ mbedtls_ecp_curve_info ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_ECP_TLS_NAMED_CURVE ; 
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE ; 
 TYPE_1__* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2( mbedtls_ecp_group *grp, const unsigned char **buf, size_t len )
{
    uint16_t tls_id;
    const mbedtls_ecp_curve_info *curve_info;

    /*
     * We expect at least three bytes (see below)
     */
    if( len < 3 )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    /*
     * First byte is curve_type; only named_curve is handled
     */
    if( *(*buf)++ != MBEDTLS_ECP_TLS_NAMED_CURVE )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    /*
     * Next two bytes are the namedcurve value
     */
    tls_id = *(*buf)++;
    tls_id <<= 8;
    tls_id |= *(*buf)++;

    if( ( curve_info = FUNC0( tls_id ) ) == NULL )
        return( MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE );

    return FUNC1( grp, curve_info->grp_id );
}
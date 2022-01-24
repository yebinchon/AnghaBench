#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int psk_len; int psk_identity_len; int /*<<< orphan*/  key_cert; struct TYPE_5__* psk_identity; struct TYPE_5__* psk; int /*<<< orphan*/  dhm_G; int /*<<< orphan*/  dhm_P; } ;
typedef  TYPE_1__ mbedtls_ssl_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4( mbedtls_ssl_config *conf )
{
#if defined(MBEDTLS_DHM_C)
    mbedtls_mpi_free( &conf->dhm_P );
    mbedtls_mpi_free( &conf->dhm_G );
#endif

#if defined(MBEDTLS_KEY_EXCHANGE__SOME__PSK_ENABLED)
    if( conf->psk != NULL )
    {
        mbedtls_zeroize( conf->psk, conf->psk_len );
        mbedtls_zeroize( conf->psk_identity, conf->psk_identity_len );
        mbedtls_free( conf->psk );
        mbedtls_free( conf->psk_identity );
        conf->psk_len = 0;
        conf->psk_identity_len = 0;
    }
#endif

#if defined(MBEDTLS_X509_CRT_PARSE_C)
    ssl_key_cert_free( conf->key_cert );
#endif

    FUNC2( conf, sizeof( mbedtls_ssl_config ) );
}
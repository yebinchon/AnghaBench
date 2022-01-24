#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  subject_key; } ;
typedef  TYPE_1__ mbedtls_x509write_cert ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBEDTLS_ASN1_OCTET_STRING ; 
 int MBEDTLS_MPI_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBEDTLS_OID_SUBJECT_KEY_IDENTIFIER ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char**,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,size_t,unsigned char*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 

int FUNC8( mbedtls_x509write_cert *ctx )
{
    int ret;
    unsigned char buf[MBEDTLS_MPI_MAX_SIZE * 2 + 20]; /* tag, length + 2xMPI */
    unsigned char *c = buf + sizeof(buf);
    size_t len = 0;

    FUNC7( buf, 0, sizeof(buf) );
    FUNC0( len, FUNC4( &c, buf, ctx->subject_key ) );

    FUNC5( buf + sizeof(buf) - len, len, buf + sizeof(buf) - 20 );
    c = buf + sizeof(buf) - 20;
    len = 20;

    FUNC0( len, FUNC2( &c, buf, len ) );
    FUNC0( len, FUNC3( &c, buf, MBEDTLS_ASN1_OCTET_STRING ) );

    return FUNC6( ctx, MBEDTLS_OID_SUBJECT_KEY_IDENTIFIER,
                                        FUNC1( MBEDTLS_OID_SUBJECT_KEY_IDENTIFIER ),
                                        0, buf + sizeof(buf) - len, len );
}
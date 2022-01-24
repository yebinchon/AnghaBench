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
struct TYPE_3__ {int /*<<< orphan*/  N; int /*<<< orphan*/  E; } ;
typedef  TYPE_1__ mbedtls_rsa_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int MBEDTLS_ASN1_CONSTRUCTED ; 
 int MBEDTLS_ASN1_SEQUENCE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,unsigned char*,int) ; 

__attribute__((used)) static int FUNC4( unsigned char **p, unsigned char *start,
                                  mbedtls_rsa_context *rsa )
{
    int ret;
    size_t len = 0;

    FUNC0( len, FUNC2( p, start, &rsa->E ) );
    FUNC0( len, FUNC2( p, start, &rsa->N ) );

    FUNC0( len, FUNC1( p, start, len ) );
    FUNC0( len, FUNC3( p, start, MBEDTLS_ASN1_CONSTRUCTED |
                                                 MBEDTLS_ASN1_SEQUENCE ) );

    return( (int) len );
}
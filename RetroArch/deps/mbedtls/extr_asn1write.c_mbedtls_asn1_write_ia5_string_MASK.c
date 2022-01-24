#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBEDTLS_ASN1_IA5_STRING ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,unsigned char*,int /*<<< orphan*/ ) ; 

int FUNC4( unsigned char **p, unsigned char *start,
                           const char *text, size_t text_len )
{
    int ret;
    size_t len = 0;

    FUNC0( len, FUNC2( p, start,
                  (const unsigned char *) text, text_len ) );

    FUNC0( len, FUNC1( p, start, len ) );
    FUNC0( len, FUNC3( p, start, MBEDTLS_ASN1_IA5_STRING ) );

    return( (int) len );
}
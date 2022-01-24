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
typedef  int /*<<< orphan*/  mbedtls_sha512_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 

void FUNC5( const unsigned char *input, size_t ilen,
             unsigned char output[64], int is384 )
{
    mbedtls_sha512_context ctx;

    FUNC2( &ctx );
    FUNC3( &ctx, is384 );
    FUNC4( &ctx, input, ilen );
    FUNC0( &ctx, output );
    FUNC1( &ctx );
}
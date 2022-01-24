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
 int MBEDTLS_ERR_AES_INVALID_KEY_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*) ; 

int FUNC3( unsigned char *rk,
                      const unsigned char *key,
                      size_t bits )
{
    switch( bits )
    {
        case 128: FUNC0( rk, key ); break;
        case 192: FUNC1( rk, key ); break;
        case 256: FUNC2( rk, key ); break;
        default : return( MBEDTLS_ERR_AES_INVALID_KEY_LENGTH );
    }

    return( 0 );
}
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
 int /*<<< orphan*/  MBEDTLS_X509_SAFE_SNPRINTF ; 
 int FUNC0 (char*,size_t,char*,char const*) ; 

int FUNC1( char *buf, size_t buf_size, const char *name )
{
    char *p = buf;
    size_t n = buf_size;
    int ret;

    ret = FUNC0( p, n, "%s key size", name );
    MBEDTLS_X509_SAFE_SNPRINTF;

    return( 0 );
}
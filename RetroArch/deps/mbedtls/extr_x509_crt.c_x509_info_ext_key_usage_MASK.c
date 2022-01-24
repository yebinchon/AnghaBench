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
struct TYPE_3__ {struct TYPE_3__* next; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ mbedtls_x509_sequence ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_X509_SAFE_SNPRINTF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC1 (char*,size_t,char*,char const*,char const*) ; 

__attribute__((used)) static int FUNC2( char **buf, size_t *size,
                                    const mbedtls_x509_sequence *extended_key_usage )
{
    int ret;
    const char *desc;
    size_t n = *size;
    char *p = *buf;
    const mbedtls_x509_sequence *cur = extended_key_usage;
    const char *sep = "";

    while( cur != NULL )
    {
        if( FUNC0( &cur->buf, &desc ) != 0 )
            desc = "???";

        ret = FUNC1( p, n, "%s%s", sep, desc );
        MBEDTLS_X509_SAFE_SNPRINTF;

        sep = ", ";

        cur = cur->next;
    }

    *size = n;
    *buf = p;

    return( 0 );
}
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
struct TYPE_3__ {int /*<<< orphan*/  Q; int /*<<< orphan*/  grp; } ;
typedef  TYPE_1__ mbedtls_ecp_keypair ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC2( unsigned char **p, const unsigned char *end,
                            mbedtls_ecp_keypair *key )
{
    int ret;

    if( ( ret = FUNC1( &key->grp, &key->Q,
                    (const unsigned char *) *p, end - *p ) ) == 0 )
    {
        ret = FUNC0( &key->grp, &key->Q );
    }

    /*
     * We know mbedtls_ecp_point_read_binary consumed all bytes or failed
     */
    *p = (unsigned char *) end;

    return( ret );
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {TYPE_1__ grp; } ;
typedef  TYPE_2__ mbedtls_ecp_keypair ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,unsigned char*,char const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const**,size_t*) ; 

__attribute__((used)) static int FUNC3( unsigned char **p, unsigned char *start,
                                mbedtls_ecp_keypair *ec )
{
    int ret;
    size_t len = 0;
    const char *oid;
    size_t oid_len;

    if( ( ret = FUNC2( ec->grp.id, &oid, &oid_len ) ) != 0 )
        return( ret );

    FUNC0( len, FUNC1( p, start, oid, oid_len ) );

    return( (int) len );
}
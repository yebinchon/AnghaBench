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
struct TYPE_3__ {int /*<<< orphan*/  dhm_G; int /*<<< orphan*/  dhm_P; } ;
typedef  TYPE_1__ mbedtls_ssl_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 

int FUNC2( mbedtls_ssl_config *conf, const char *dhm_P, const char *dhm_G )
{
    int ret;

    if( ( ret = FUNC1( &conf->dhm_P, 16, dhm_P ) ) != 0 ||
        ( ret = FUNC1( &conf->dhm_G, 16, dhm_G ) ) != 0 )
    {
        FUNC0( &conf->dhm_P );
        FUNC0( &conf->dhm_G );
        return( ret );
    }

    return( 0 );
}
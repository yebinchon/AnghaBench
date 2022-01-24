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
struct TYPE_3__ {int /*<<< orphan*/ * transform_negotiate; int /*<<< orphan*/ * transform; int /*<<< orphan*/ * handshake; } ;
typedef  TYPE_1__ mbedtls_ssl_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( mbedtls_ssl_context *ssl )
{
    FUNC0( 3, ( "=> handshake wrapup: final free" ) );

    /*
     * Free our handshake params
     */
    FUNC2( ssl->handshake );
    FUNC1( ssl->handshake );
    ssl->handshake = NULL;

    /*
     * Free the previous transform and swith in the current one
     */
    if( ssl->transform )
    {
        FUNC3( ssl->transform );
        FUNC1( ssl->transform );
    }
    ssl->transform = ssl->transform_negotiate;
    ssl->transform_negotiate = NULL;

    FUNC0( 3, ( "<= handshake wrapup: final free" ) );
}
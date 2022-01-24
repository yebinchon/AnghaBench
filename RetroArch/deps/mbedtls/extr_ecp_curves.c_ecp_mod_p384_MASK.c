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
typedef  int /*<<< orphan*/  mbedtls_mpi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LAST ; 
 int /*<<< orphan*/  NEXT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ret ; 

__attribute__((used)) static int FUNC3( mbedtls_mpi *N )
{
    FUNC1( 384 );

    FUNC0( 12 ); FUNC0( 21 ); FUNC0( 20 );
    FUNC2( 23 );                                              NEXT; /* A0 */

    FUNC0( 13 ); FUNC0( 22 ); FUNC0( 23 );
    FUNC2( 12 ); FUNC2( 20 );                                   NEXT; /* A2 */

    FUNC0( 14 ); FUNC0( 23 );
    FUNC2( 13 ); FUNC2( 21 );                                   NEXT; /* A2 */

    FUNC0( 15 ); FUNC0( 12 ); FUNC0( 20 ); FUNC0( 21 );
    FUNC2( 14 ); FUNC2( 22 ); FUNC2( 23 );                        NEXT; /* A3 */

    FUNC0( 21 ); FUNC0( 21 ); FUNC0( 16 ); FUNC0( 13 ); FUNC0( 12 ); FUNC0( 20 ); FUNC0( 22 );
    FUNC2( 15 ); FUNC2( 23 ); FUNC2( 23 );                        NEXT; /* A4 */

    FUNC0( 22 ); FUNC0( 22 ); FUNC0( 17 ); FUNC0( 14 ); FUNC0( 13 ); FUNC0( 21 ); FUNC0( 23 );
    FUNC2( 16 );                                              NEXT; /* A5 */

    FUNC0( 23 ); FUNC0( 23 ); FUNC0( 18 ); FUNC0( 15 ); FUNC0( 14 ); FUNC0( 22 );
    FUNC2( 17 );                                              NEXT; /* A6 */

    FUNC0( 19 ); FUNC0( 16 ); FUNC0( 15 ); FUNC0( 23 );
    FUNC2( 18 );                                              NEXT; /* A7 */

    FUNC0( 20 ); FUNC0( 17 ); FUNC0( 16 );
    FUNC2( 19 );                                              NEXT; /* A8 */

    FUNC0( 21 ); FUNC0( 18 ); FUNC0( 17 );
    FUNC2( 20 );                                              NEXT; /* A9 */

    FUNC0( 22 ); FUNC0( 19 ); FUNC0( 18 );
    FUNC2( 21 );                                              NEXT; /* A10 */

    FUNC0( 23 ); FUNC0( 20 ); FUNC0( 19 );
    FUNC2( 22 );                                              LAST; /* A11 */

cleanup:
    return( ret );
}
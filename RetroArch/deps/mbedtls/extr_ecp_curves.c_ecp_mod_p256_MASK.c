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
    FUNC1( 256 );

    FUNC0(  8 ); FUNC0(  9 );
    FUNC2( 11 ); FUNC2( 12 ); FUNC2( 13 ); FUNC2( 14 );             NEXT; /* A0 */

    FUNC0(  9 ); FUNC0( 10 );
    FUNC2( 12 ); FUNC2( 13 ); FUNC2( 14 ); FUNC2( 15 );             NEXT; /* A1 */

    FUNC0( 10 ); FUNC0( 11 );
    FUNC2( 13 ); FUNC2( 14 ); FUNC2( 15 );                        NEXT; /* A2 */

    FUNC0( 11 ); FUNC0( 11 ); FUNC0( 12 ); FUNC0( 12 ); FUNC0( 13 );
    FUNC2( 15 ); FUNC2(  8 ); FUNC2(  9 );                        NEXT; /* A3 */

    FUNC0( 12 ); FUNC0( 12 ); FUNC0( 13 ); FUNC0( 13 ); FUNC0( 14 );
    FUNC2(  9 ); FUNC2( 10 );                                   NEXT; /* A4 */

    FUNC0( 13 ); FUNC0( 13 ); FUNC0( 14 ); FUNC0( 14 ); FUNC0( 15 );
    FUNC2( 10 ); FUNC2( 11 );                                   NEXT; /* A5 */

    FUNC0( 14 ); FUNC0( 14 ); FUNC0( 15 ); FUNC0( 15 ); FUNC0( 14 ); FUNC0( 13 );
    FUNC2(  8 ); FUNC2(  9 );                                   NEXT; /* A6 */

    FUNC0( 15 ); FUNC0( 15 ); FUNC0( 15 ); FUNC0( 8 );
    FUNC2( 10 ); FUNC2( 11 ); FUNC2( 12 ); FUNC2( 13 );             LAST; /* A7 */

cleanup:
    return( ret );
}
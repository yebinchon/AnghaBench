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
    FUNC1( 224 );

    FUNC2(  7 ); FUNC2( 11 );               NEXT; /* A0 += -A7 - A11 */
    FUNC2(  8 ); FUNC2( 12 );               NEXT; /* A1 += -A8 - A12 */
    FUNC2(  9 ); FUNC2( 13 );               NEXT; /* A2 += -A9 - A13 */
    FUNC2( 10 ); FUNC0(  7 ); FUNC0( 11 );    NEXT; /* A3 += -A10 + A7 + A11 */
    FUNC2( 11 ); FUNC0(  8 ); FUNC0( 12 );    NEXT; /* A4 += -A11 + A8 + A12 */
    FUNC2( 12 ); FUNC0(  9 ); FUNC0( 13 );    NEXT; /* A5 += -A12 + A9 + A13 */
    FUNC2( 13 ); FUNC0( 10 );               LAST; /* A6 += -A13 + A10 */

cleanup:
    return( ret );
}
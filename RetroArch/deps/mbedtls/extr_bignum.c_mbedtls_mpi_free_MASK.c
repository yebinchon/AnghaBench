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
struct TYPE_3__ {int s; int /*<<< orphan*/ * p; scalar_t__ n; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC2( mbedtls_mpi *X )
{
    if( X == NULL )
        return;

    if( X->p != NULL )
    {
        FUNC1( X->p, X->n );
        FUNC0( X->p );
    }

    X->s = 1;
    X->n = 0;
    X->p = NULL;
}
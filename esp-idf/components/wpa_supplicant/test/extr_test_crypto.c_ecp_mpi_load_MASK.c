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
typedef  int /*<<< orphan*/  mbedtls_mpi_uint ;
struct TYPE_3__ {int s; size_t n; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 

__attribute__((used)) static inline void FUNC2( mbedtls_mpi *X, const mbedtls_mpi_uint *p, size_t len )
{
    X->s = 1;
    X->n = len / sizeof( mbedtls_mpi_uint );
    X->p = FUNC1(len);
    FUNC0(X->p, (void *)p, len);
}
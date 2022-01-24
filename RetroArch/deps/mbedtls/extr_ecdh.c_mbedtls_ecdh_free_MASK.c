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
struct TYPE_3__ {int /*<<< orphan*/  _d; int /*<<< orphan*/  z; int /*<<< orphan*/  d; int /*<<< orphan*/  Vf; int /*<<< orphan*/  Vi; int /*<<< orphan*/  Qp; int /*<<< orphan*/  Q; int /*<<< orphan*/  grp; } ;
typedef  TYPE_1__ mbedtls_ecdh_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3( mbedtls_ecdh_context *ctx )
{
    if( ctx == NULL )
        return;

    FUNC0( &ctx->grp );
    FUNC1( &ctx->Q   );
    FUNC1( &ctx->Qp  );
    FUNC1( &ctx->Vi  );
    FUNC1( &ctx->Vf  );
    FUNC2( &ctx->d  );
    FUNC2( &ctx->z  );
    FUNC2( &ctx->_d );
}
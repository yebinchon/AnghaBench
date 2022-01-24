#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ccdigest_info {int /*<<< orphan*/  state_size; int /*<<< orphan*/  block_size; } ;
struct ccdigest_ctx {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  b8; } ;
struct TYPE_6__ {int /*<<< orphan*/  b8; } ;
struct TYPE_8__ {TYPE_2__ h; TYPE_1__ m; } ;
typedef  TYPE_3__ SHA1_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccdigest_info const*,struct ccdigest_ctx*) ; 
 int FUNC1 (struct ccdigest_info const*,struct ccdigest_ctx*) ; 
 scalar_t__ FUNC2 (struct ccdigest_info const*,struct ccdigest_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccdigest_info const*,struct ccdigest_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(const struct ccdigest_info *di, struct ccdigest_ctx *di_ctx, SHA1_CTX *sha1_ctx)
{
	FUNC5(sha1_ctx, FUNC1(di, di_ctx)/8+FUNC2(di, di_ctx));
	FUNC4(sha1_ctx->m.b8, FUNC0(di, di_ctx), di->block_size);
	FUNC4(sha1_ctx->h.b8, FUNC3(di, di_ctx), di->state_size);
}
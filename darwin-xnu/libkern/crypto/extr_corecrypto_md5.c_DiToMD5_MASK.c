#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ccdigest_info {int /*<<< orphan*/  state_size; int /*<<< orphan*/  block_size; } ;
struct ccdigest_ctx {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccdigest_info const*,struct ccdigest_ctx*) ; 
 int FUNC1 (struct ccdigest_info const*,struct ccdigest_ctx*) ; 
 scalar_t__ FUNC2 (struct ccdigest_info const*,struct ccdigest_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccdigest_info const*,struct ccdigest_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(const struct ccdigest_info *di, struct ccdigest_ctx *di_ctx, MD5_CTX *md5_ctx)
{
	FUNC5(md5_ctx, FUNC1(di, di_ctx)/8+FUNC2(di, di_ctx));
	FUNC4(md5_ctx->buffer, FUNC0(di, di_ctx), di->block_size);
	FUNC4(md5_ctx->state, FUNC3(di, di_ctx), di->state_size);
}
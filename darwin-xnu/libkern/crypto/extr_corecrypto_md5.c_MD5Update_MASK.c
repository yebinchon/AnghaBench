#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ccdigest_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ccdigest_update_fn ) (struct ccdigest_info const*,int /*<<< orphan*/ ,unsigned int,void const*) ;struct ccdigest_info* ccmd5_di; } ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccdigest_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ccdigest_info const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccdigest_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  di_ctx ; 
 TYPE_1__* g_crypto_funcs ; 
 int /*<<< orphan*/  FUNC3 (struct ccdigest_info const*,int /*<<< orphan*/ ,unsigned int,void const*) ; 

void FUNC4(MD5_CTX *ctx, const void *data, unsigned int len)
{
	const struct ccdigest_info *di=g_crypto_funcs->ccmd5_di;
	FUNC2(di, di_ctx);
	
	FUNC1(di, ctx, di_ctx);
	g_crypto_funcs->ccdigest_update_fn(di, di_ctx, len, data);	
	FUNC0(di, di_ctx, ctx);
}
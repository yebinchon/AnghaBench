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
struct cpx {int /*<<< orphan*/  cpx_flags; int /*<<< orphan*/  cpx_iv_aes_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CPX_IV_AES_CTX_INITIALIZED ; 
 int /*<<< orphan*/  CPX_IV_AES_CTX_VFS ; 
 int CPX_USE_OFFSET_FOR_IV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *) ; 

void FUNC3(struct cpx *cpx, void *iv_key)
{
	FUNC2(iv_key, &cpx->cpx_iv_aes_ctx);
	FUNC1(cpx->cpx_flags, CPX_IV_AES_CTX_INITIALIZED | CPX_USE_OFFSET_FOR_IV);
	FUNC0(cpx->cpx_flags, CPX_IV_AES_CTX_VFS);
}
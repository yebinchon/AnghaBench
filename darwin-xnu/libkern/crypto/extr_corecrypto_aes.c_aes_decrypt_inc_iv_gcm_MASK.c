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
struct ccmode_gcm {int dummy; } ;
typedef  int /*<<< orphan*/  ccgcm_ctx ;
typedef  int /*<<< orphan*/  aes_rval ;
struct TYPE_2__ {int /*<<< orphan*/  (* ccgcm_inc_iv_fn ) (struct ccmode_gcm const*,int /*<<< orphan*/ *,unsigned char*) ;struct ccmode_gcm* ccaes_gcm_decrypt; } ;

/* Variables and functions */
 int /*<<< orphan*/  aes_error ; 
 TYPE_1__* g_crypto_funcs ; 
 int /*<<< orphan*/  FUNC0 (struct ccmode_gcm const*,int /*<<< orphan*/ *,unsigned char*) ; 

aes_rval FUNC1(unsigned char *out_iv, ccgcm_ctx *ctx)
{
        const struct ccmode_gcm *gcm = g_crypto_funcs->ccaes_gcm_decrypt;
        if (!gcm) {
                return aes_error;
        }

        return g_crypto_funcs->ccgcm_inc_iv_fn(gcm, ctx, out_iv);
}
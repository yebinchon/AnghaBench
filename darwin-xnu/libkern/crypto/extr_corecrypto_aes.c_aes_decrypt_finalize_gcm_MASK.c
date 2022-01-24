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
typedef  int aes_rval ;
struct TYPE_2__ {struct ccmode_gcm* ccaes_gcm_decrypt; } ;

/* Variables and functions */
 int aes_error ; 
 int FUNC0 (struct ccmode_gcm const*,int /*<<< orphan*/ *,unsigned int,unsigned char*) ; 
 int FUNC1 (struct ccmode_gcm const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* g_crypto_funcs ; 

aes_rval FUNC2(unsigned char *tag, unsigned int tag_bytes, ccgcm_ctx *ctx)
{
	int rc;
	const struct ccmode_gcm *gcm = g_crypto_funcs->ccaes_gcm_decrypt;
	if (!gcm) {
	        return aes_error;
	}

	rc = FUNC0(gcm, ctx, tag_bytes, tag);
	rc |= FUNC1(gcm, ctx);
	return rc;
}
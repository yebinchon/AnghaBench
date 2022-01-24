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
struct ccmode_gcm {int /*<<< orphan*/  size; } ;
struct TYPE_2__ {struct ccmode_gcm* ccaes_gcm_decrypt; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccgcm_ctx ; 
 TYPE_1__* g_crypto_funcs ; 

unsigned FUNC1(void)
{
	const struct ccmode_gcm *gcm = g_crypto_funcs->ccaes_gcm_decrypt;
	if (!gcm) {
	        return 0;
	}
	return (FUNC0(ccgcm_ctx, gcm->size));
}
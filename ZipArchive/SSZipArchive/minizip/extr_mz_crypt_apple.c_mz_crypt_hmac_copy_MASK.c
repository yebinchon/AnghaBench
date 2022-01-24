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
struct TYPE_2__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ mz_crypt_hmac ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  CCHmacContext ;

/* Variables and functions */
 int /*<<< orphan*/  MZ_OK ; 
 int /*<<< orphan*/  MZ_PARAM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int32_t FUNC1(void *src_handle, void *target_handle)
{
    mz_crypt_hmac *source = (mz_crypt_hmac *)src_handle;
    mz_crypt_hmac *target = (mz_crypt_hmac *)target_handle;

    if (source == NULL || target == NULL)
        return MZ_PARAM_ERROR;

    FUNC0(&target->ctx, &source->ctx, sizeof(CCHmacContext));
    return MZ_OK;
}
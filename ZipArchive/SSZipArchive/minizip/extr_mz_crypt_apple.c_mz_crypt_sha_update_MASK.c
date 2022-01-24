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
struct TYPE_2__ {scalar_t__ algorithm; int /*<<< orphan*/  error; int /*<<< orphan*/  ctx256; int /*<<< orphan*/  ctx1; int /*<<< orphan*/  initialized; } ;
typedef  TYPE_1__ mz_crypt_sha ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MZ_HASH_ERROR ; 
 scalar_t__ MZ_HASH_SHA1 ; 
 int /*<<< orphan*/  MZ_PARAM_ERROR ; 

int32_t FUNC2(void *handle, const void *buf, int32_t size)
{
    mz_crypt_sha *sha = (mz_crypt_sha *)handle;

    if (sha == NULL || buf == NULL || !sha->initialized)
        return MZ_PARAM_ERROR;

    if (sha->algorithm == MZ_HASH_SHA1)
        sha->error = FUNC0(&sha->ctx1, buf, size);
    else
        sha->error = FUNC1(&sha->ctx256, buf, size);

    if (!sha->error)
        return MZ_HASH_ERROR;

    return size;
}
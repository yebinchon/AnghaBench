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
typedef  void mz_crypt_aes ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 

void *FUNC2(void **handle)
{
    mz_crypt_aes *aes = NULL;

    aes = (mz_crypt_aes *)FUNC0(sizeof(mz_crypt_aes));
    if (aes != NULL)
        FUNC1(aes, 0, sizeof(mz_crypt_aes));
    if (handle != NULL)
        *handle = aes;

    return aes;
}
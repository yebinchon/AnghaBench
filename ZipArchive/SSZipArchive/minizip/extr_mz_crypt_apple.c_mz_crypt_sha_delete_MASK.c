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
typedef  int /*<<< orphan*/  mz_crypt_sha ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

void FUNC2(void **handle)
{
    mz_crypt_sha *sha = NULL;
    if (handle == NULL)
        return;
    sha = (mz_crypt_sha *)*handle;
    if (sha != NULL)
    {
        FUNC1(*handle);
        FUNC0(sha);
    }
    *handle = NULL;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int IsHMac; scalar_t__ Md; int /*<<< orphan*/  Ctx; } ;
typedef  TYPE_1__ MD ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

bool FUNC3(MD *md, void *key, UINT key_size)
{
	// Validate arguments
	if (md == NULL || md->IsHMac == false || key == NULL || key_size == 0)
	{
		return false;
	}

	if (FUNC1(md->Ctx, key, key_size, (const EVP_MD *)md->Md, NULL) == false)
	{
		FUNC0("SetMdKey(): HMAC_Init_ex() failed with error: %s\n", FUNC2());
		return false;
	}

	return true;
}
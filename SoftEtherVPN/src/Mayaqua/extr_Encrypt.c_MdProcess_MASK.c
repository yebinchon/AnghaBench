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
struct TYPE_3__ {int /*<<< orphan*/  Ctx; scalar_t__ IsHMac; scalar_t__ IsNullMd; } ;
typedef  TYPE_1__ MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 

UINT FUNC7(MD *md, void *dest, void *src, UINT size)
{
	UINT len = 0;

	// Validate arguments
	if (md == NULL || md->IsNullMd || dest == NULL || (src == NULL && size != 0))
	{
		return 0;
	}

	if (md->IsHMac)
	{
		// WARNING: Do not remove the call to HMAC_Init_ex(), it's required even if the context is initialized by SetMdKey()!
		if (FUNC4(md->Ctx, NULL, 0, NULL, NULL) == false)
		{
			FUNC0("MdProcess(): HMAC_Init_ex() failed with error: %s\n", FUNC6());
			return 0;
		}

		if (FUNC5(md->Ctx, src, size) == false)
		{
			FUNC0("MdProcess(): HMAC_Update() failed with error: %s\n", FUNC6());
			return 0;
		}

		if (FUNC3(md->Ctx, dest, &len) == false)
		{
			FUNC0("MdProcess(): HMAC_Final() failed with error: %s\n", FUNC6());
		}
	}
	else
	{
		if (FUNC2(md->Ctx, src, size) == false)
		{
			FUNC0("MdProcess(): EVP_DigestUpdate() failed with error: %s\n", FUNC6());
			return 0;
		}

		if (FUNC1(md->Ctx, dest, &len) == false)
		{
			FUNC0("MdProcess(): EVP_DigestFinal_ex() failed with error: %s\n", FUNC6());
		}
	}

	return len;
}
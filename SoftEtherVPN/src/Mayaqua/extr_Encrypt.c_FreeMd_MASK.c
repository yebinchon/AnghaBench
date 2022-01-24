#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* Ctx; scalar_t__ IsHMac; } ;
typedef  TYPE_1__ MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(MD *md)
{
	// Validate arguments
	if (md == NULL)
	{
		return;
	}

	if (md->Ctx != NULL)
	{
		if (md->IsHMac)
		{
#if OPENSSL_VERSION_NUMBER >= 0x10100000L
			HMAC_CTX_free(md->Ctx);
#else
			FUNC3(md->Ctx);
			FUNC2(md->Ctx);
#endif
		}
		else
		{
#if OPENSSL_VERSION_NUMBER >= 0x10100000L
			EVP_MD_CTX_free(md->Ctx);
#else
			FUNC0(md->Ctx);
#endif
		}
	}

	FUNC2(md);
}
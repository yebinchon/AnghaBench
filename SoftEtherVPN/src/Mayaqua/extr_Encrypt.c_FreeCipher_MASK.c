#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* Ctx; } ;
typedef  TYPE_1__ CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(CIPHER *c)
{
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	if (c->Ctx != NULL)
	{
#if OPENSSL_VERSION_NUMBER >= 0x10100000L
		EVP_CIPHER_CTX_free(c->Ctx);
#else
		FUNC0(c->Ctx);
		FUNC2(c->Ctx);
#endif
	}

	FUNC2(c);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int IsHMac; int /*<<< orphan*/  const* Md; void* Ctx; } ;
typedef  TYPE_1__ MD ;
typedef  int /*<<< orphan*/  HMAC_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__*,void*,void*,scalar_t__ const) ; 
 int FUNC5 (TYPE_1__*,void*,scalar_t__) ; 
 void* FUNC6 (int) ; 

__attribute__((used)) static UINT FUNC7(const EVP_MD *md, void *dest, void *key, UINT key_size, const void *src, const UINT src_size)
{
	MD *m;
	UINT len = 0;

	// Validate arguments
	if (md == NULL || dest == NULL || key == NULL || key_size == 0 || (src == NULL && src_size != 0))
	{
		return 0;
	}

	m = FUNC6(sizeof(MD));
#if OPENSSL_VERSION_NUMBER >= 0x10100000L
	m->Ctx = HMAC_CTX_new();
#else
	m->Ctx = FUNC6(sizeof(HMAC_CTX));
	FUNC2(m->Ctx);
#endif
	m->Md = md;
	m->IsHMac = true;

	if (FUNC5(m, key, key_size) == false)
	{
		FUNC0("Internal_HMac(): SetMdKey() failed!\n");
		goto final;
	}

	len = FUNC4(m, dest, (void *)src, src_size);
	if (len == 0)
	{
		FUNC0("Internal_HMac(): MdProcess() returned 0!\n");
	}

final:
	FUNC1(m);
	return len;
}
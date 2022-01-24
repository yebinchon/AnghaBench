#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hmac_ctx_st {int dummy; } ;
struct evp_md_st {int dummy; } ;
struct TYPE_4__ {int IsNullMd; int IsHMac; struct evp_md_st const* Md; void* Ctx; int /*<<< orphan*/  Size; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ MD ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (void*,struct evp_md_st const*,int /*<<< orphan*/ *) ; 
 void* FUNC2 () ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* FUNC8 () ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC13 (int) ; 

MD *FUNC14(char *name, bool hmac)
{
	MD *m;

	// Validate arguments
	if (name == NULL)
	{
		return NULL;
	}

	m = FUNC13(sizeof(MD));

	FUNC12(m->Name, sizeof(m->Name), name);

	if (FUNC11(name, "[null-digest]") == 0 ||
		FUNC11(name, "NULL") == 0 ||
		FUNC9(name))
	{
		m->IsNullMd = true;
		return m;
	}

	m->Md = (const struct evp_md_st *)FUNC5(name);
	if (m->Md == NULL)
	{
		FUNC0("NewMdEx(): Algorithm %s not found by EVP_get_digestbyname().\n", m->Name);
		FUNC6(m);
		return NULL;
	}

	m->Size = FUNC4((const EVP_MD *)m->Md);
	m->IsHMac = hmac;

	if (hmac)
	{
#if OPENSSL_VERSION_NUMBER >= 0x10100000L
		m->Ctx = HMAC_CTX_new();
#else
		m->Ctx = FUNC13(sizeof(struct hmac_ctx_st));
		FUNC7(m->Ctx);
#endif
	}
	else
	{
#if OPENSSL_VERSION_NUMBER >= 0x10100000L
		m->Ctx = EVP_MD_CTX_new();
#else
		m->Ctx = FUNC2();
#endif
		if (FUNC1(m->Ctx, m->Md, NULL) == false)
		{
			FUNC0("NewMdEx(): EVP_DigestInit_ex() failed with error: %s\n", FUNC10());
			FUNC6(m);
		}
	}

	return m;
}
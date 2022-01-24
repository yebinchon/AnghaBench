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
struct evp_cipher_ctx_st {int dummy; } ;
struct TYPE_4__ {int IsNullCipher; int IsAeadCipher; int /*<<< orphan*/ * Cipher; int /*<<< orphan*/  IvSize; int /*<<< orphan*/  KeySize; int /*<<< orphan*/  BlockSize; void* Ctx; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int EVP_CIPH_FLAG_AEAD_CIPHER ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC12 (int) ; 

CIPHER *FUNC13(char *name)
{
	CIPHER *c;
	// Validate arguments
	if (name == NULL)
	{
		return NULL;
	}

	c = FUNC12(sizeof(CIPHER));

	FUNC11(c->Name, sizeof(c->Name), name);

	if (FUNC10(name, "[null-cipher]") == 0 ||
		FUNC10(name, "NULL") == 0 ||
		FUNC9(name))
	{
		c->IsNullCipher = true;
		return c;
	}

	c->Cipher = FUNC7(c->Name);
	if (c->Cipher == NULL)
	{
		FUNC0("NewCipher(): Cipher %s not found by EVP_get_cipherbyname().\n", c->Name);
		FUNC8(c);
		return NULL;
	}

#if OPENSSL_VERSION_NUMBER >= 0x10100000L
	c->Ctx = EVP_CIPHER_CTX_new();
#else
	c->Ctx = FUNC12(sizeof(struct evp_cipher_ctx_st));
	FUNC1(c->Ctx);
#endif

	c->IsAeadCipher = FUNC4(c->Cipher) & EVP_CIPH_FLAG_AEAD_CIPHER;
	c->BlockSize = FUNC3(c->Cipher);
	c->KeySize = FUNC6(c->Cipher);
	c->IvSize = FUNC5(c->Cipher);

	return c;
}
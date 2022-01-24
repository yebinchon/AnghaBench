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
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_3__ {int IsAeadCipher; int Encrypt; int /*<<< orphan*/  Ctx; scalar_t__ IsNullCipher; } ;
typedef  TYPE_1__ CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int /*<<< orphan*/  EVP_CTRL_AEAD_GET_TAG ; 
 int /*<<< orphan*/  EVP_CTRL_AEAD_SET_TAG ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*,int*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 

UINT FUNC7(CIPHER *c, void *iv, void *tag, UINT tag_size, void *dest, void *src, UINT src_size, void *aad, UINT aad_size)
{
	int r = src_size;
	int r2 = 0;
	// Validate arguments
	if (c == NULL)
	{
		return 0;
	}
	else if (c->IsNullCipher)
	{
		FUNC0(dest, src, src_size);
		return src_size;
	}
	else if (c->IsAeadCipher == false || iv == NULL || tag == NULL || tag_size == 0 || dest == NULL || src == NULL || src_size == 0)
	{
		return 0;
	}

	if (FUNC4(c->Ctx, NULL, NULL, NULL, iv, c->Encrypt) == false)
	{
		FUNC1("CipherProcessAead(): EVP_CipherInit_ex() failed with error: %s\n", FUNC6());
		return 0;
	}

	if (c->Encrypt == false)
	{
		if (FUNC2(c->Ctx, EVP_CTRL_AEAD_SET_TAG, tag_size, tag) == false)
		{
			FUNC1("CipherProcessAead(): EVP_CIPHER_CTX_ctrl() failed to set the tag!\n");
			return 0;
		}
	}

	if (aad != NULL && aad_size != 0)
	{
		if (FUNC5(c->Ctx, NULL, &r, aad, aad_size) == false)
		{
			FUNC1("CipherProcessAead(): EVP_CipherUpdate() failed with error: %s\n", FUNC6());
			return 0;
		}
	}

	if (FUNC5(c->Ctx, dest, &r, src, src_size) == false)
	{
		FUNC1("CipherProcessAead(): EVP_CipherUpdate() failed with error: %s\n", FUNC6());
		return 0;
	}

	if (FUNC3(c->Ctx, ((UCHAR *)dest) + (UINT)r, &r2) == false)
	{
		FUNC1("CipherProcessAead(): EVP_CipherFinal_ex() failed with error: %s\n", FUNC6());
		return 0;
	}

	if (c->Encrypt)
	{
		if (FUNC2(c->Ctx, EVP_CTRL_AEAD_GET_TAG, tag_size, tag) == false)
		{
			FUNC1("CipherProcessAead(): EVP_CIPHER_CTX_ctrl() failed to get the tag!\n");
			return 0;
		}
	}

	return r + r2;
}
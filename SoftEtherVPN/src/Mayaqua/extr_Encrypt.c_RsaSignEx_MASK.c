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
typedef  int /*<<< orphan*/  hash ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  pkey; } ;
typedef  TYPE_1__ K ;

/* Variables and functions */
 scalar_t__ EVP_PKEY_RSA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,void*,int) ; 
 int RSA_KEY_SIZE ; 
 int /*<<< orphan*/  RSA_PKCS1_PADDING ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SIGN_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 

bool FUNC5(void *dst, void *src, UINT size, K *k, UINT bits)
{
	UCHAR hash[SIGN_HASH_SIZE];
	// Validate arguments
	if (dst == NULL || src == NULL || k == NULL || FUNC0(k->pkey) != EVP_PKEY_RSA)
	{
		return false;
	}
	if (bits == 0)
	{
		bits = RSA_KEY_SIZE;
	}

	FUNC4(dst, bits / 8);

	// Hash
	if (FUNC2(hash, sizeof(hash), src, size) == false)
	{
		return false;
	}

	// Signature
	if (FUNC3(sizeof(hash), hash, dst, FUNC1(k->pkey), RSA_PKCS1_PADDING) <= 0)
	{
		return false;
	}

	return true;
}
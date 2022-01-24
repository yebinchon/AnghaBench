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
typedef  int /*<<< orphan*/  hash_data ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_3__ {int private_key; int /*<<< orphan*/  pkey; } ;
typedef  int /*<<< orphan*/  RSA ;
typedef  TYPE_1__ K ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,void*,int) ; 
 int FUNC4 (int,int) ; 
 int RSA_KEY_SIZE ; 
 int /*<<< orphan*/  RSA_PKCS1_PADDING ; 
 scalar_t__ FUNC5 (int,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int SIGN_HASH_SIZE ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 

bool FUNC8(void *data, UINT data_size, void *sign, K *k, UINT bits)
{
	UCHAR hash_data[SIGN_HASH_SIZE];
	UCHAR *decrypt_data;
	RSA *rsa;
	UINT rsa_size;
	// Validate arguments
	if (data == NULL || sign == NULL || k == NULL || k->private_key != false)
	{
		return false;
	}
	if (bits == 0)
	{
		bits = RSA_KEY_SIZE;
	}

	rsa = FUNC1(k->pkey);
	if (rsa == NULL)
	{
		return false;
	}

	// Hash the data
	if (FUNC3(hash_data, sizeof(hash_data), data, data_size) == false)
	{
		return false;
	}

	rsa_size = FUNC6(rsa);
	rsa_size = FUNC4(rsa_size, 1024); // For just in case
	decrypt_data = FUNC7(rsa_size);

	// Decode the signature
	if (FUNC5(bits / 8, sign, decrypt_data, rsa, RSA_PKCS1_PADDING) <= 0)
	{
		FUNC2(decrypt_data);
		return false;
	}

	// Comparison
	if (FUNC0(decrypt_data, hash_data, SIGN_HASH_SIZE) != 0)
	{
		FUNC2(decrypt_data);
		return false;
	}

	FUNC2(decrypt_data);

	return true;
}
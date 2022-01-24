#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int rsa_pub_ctx ;
typedef  int /*<<< orphan*/  exponent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CC_DIGEST_OID_SHA256 ; 
 int /*<<< orphan*/  CHUNKLIST_PUBKEY_LEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int INVALID_SIG ; 
 int /*<<< orphan*/  SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int FUNC5 (int*,int,int const*,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t,int*,int*) ; 

__attribute__((used)) static int
FUNC7(const uint8_t *key_msb, size_t keylen, uint8_t *sig_msb, size_t siglen, uint8_t *digest)
{
	int err = 0;
	bool sig_valid = false;
	uint8_t *sig = NULL;

	const uint8_t exponent[] = { 0x01, 0x00, 0x01 };
	uint8_t *modulus = FUNC2(keylen);
	rsa_pub_ctx *rsa_ctx = FUNC2(sizeof(rsa_pub_ctx));
	sig = FUNC2(siglen);

	if (modulus == NULL || rsa_ctx == NULL || sig == NULL) {
		err = ENOMEM;
		goto out;
	}

	FUNC1(rsa_ctx, sizeof(rsa_pub_ctx));
	FUNC3(modulus, key_msb, keylen);
	FUNC3(sig, sig_msb, siglen);

	err = FUNC5(rsa_ctx,
			sizeof(exponent), exponent,
			CHUNKLIST_PUBKEY_LEN, modulus);
	if (err) {
		FUNC0("rsa_make_pub() failed");
		goto out;
	}

	err = FUNC6(rsa_ctx, CC_DIGEST_OID_SHA256,
			SHA256_DIGEST_LENGTH, digest,
			siglen, sig,
			&sig_valid);
	if (err) {
		sig_valid = false;
		FUNC0("rsa_verify() failed");
		err = EINVAL;
		goto out;
	}

out:
	FUNC4(sig);
	FUNC4(rsa_ctx);
	FUNC4(modulus);

	if (err) {
		return err;
	} else if (sig_valid == true) {
		return 0; /* success */
	} else {
		return INVALID_SIG;
	}
}
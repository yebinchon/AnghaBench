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
typedef  int /*<<< orphan*/  u8 ;
struct crypto_private_key {int dummy; } ;

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/  const*,int,size_t*) ; 
 struct crypto_private_key* FUNC1 (unsigned char*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pem_key_enc_begin ; 
 int /*<<< orphan*/  pem_key_enc_end ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static struct crypto_private_key * FUNC5(const u8 *key,
							 size_t len,
							 const char *passwd)
{
	const u8 *pos, *end;
	unsigned char *der;
	size_t der_len;
	struct crypto_private_key *pkey;

	if (passwd == NULL)
		return NULL;
	pos = FUNC4(pem_key_enc_begin, key, len);
	if (!pos)
		return NULL;
	pos += FUNC3(pem_key_enc_begin);
	end = FUNC4(pem_key_enc_end, pos, key + len - pos);
	if (!end)
		return NULL;

	der = FUNC0(pos, end - pos, &der_len);
	if (!der)
		return NULL;
	pkey = FUNC1(der, der_len, passwd);
	FUNC2(der);
	return pkey;
}
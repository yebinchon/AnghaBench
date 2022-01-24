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
 int /*<<< orphan*/  MSG_DEBUG ; 
 unsigned char* FUNC0 (int /*<<< orphan*/  const*,int,size_t*) ; 
 struct crypto_private_key* FUNC1 (unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* pem_key2_begin ; 
 char* pem_key2_end ; 
 char* pem_key_begin ; 
 char* pem_key_end ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct crypto_private_key * FUNC6(const u8 *key, size_t len)
{
	const u8 *pos, *end;
	unsigned char *der;
	size_t der_len;
	struct crypto_private_key *pkey;

	pos = FUNC4(pem_key_begin, key, len);
	if (!pos) {
		pos = FUNC4(pem_key2_begin, key, len);
		if (!pos)
			return NULL;
		pos += FUNC3(pem_key2_begin);
		end = FUNC4(pem_key2_end, pos, key + len - pos);
		if (!end)
			return NULL;
	} else {
		const u8 *pos2;
		pos += FUNC3(pem_key_begin);
		end = FUNC4(pem_key_end, pos, key + len - pos);
		if (!end)
			return NULL;
		pos2 = FUNC4("Proc-Type: 4,ENCRYPTED", pos, end - pos);
		if (pos2) {
			FUNC5(MSG_DEBUG, "TLSv1: Unsupported private key "
				   "format (Proc-Type/DEK-Info)");
			return NULL;
		}
	}

	der = FUNC0(pos, end - pos, &der_len);
	if (!der)
		return NULL;
	pkey = FUNC1(der, der_len, NULL);
	FUNC2(der);
	return pkey;
}
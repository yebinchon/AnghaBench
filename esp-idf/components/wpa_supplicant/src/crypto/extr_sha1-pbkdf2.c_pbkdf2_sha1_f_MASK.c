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
typedef  unsigned char u8 ;

/* Variables and functions */
 int SHA1_MAC_LEN ; 
 scalar_t__ FUNC0 (unsigned char*,size_t,unsigned char*,int,unsigned char*) ; 
 scalar_t__ FUNC1 (unsigned char*,size_t,int,unsigned char const**,size_t*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static int 
FUNC4(const char *passphrase, const char *ssid,
        size_t ssid_len, int iterations, unsigned int count,
        u8 *digest)
{
	unsigned char tmp[SHA1_MAC_LEN], tmp2[SHA1_MAC_LEN];
	int i, j;
	unsigned char count_buf[4];
	const u8 *addr[2];
	size_t len[2];
	size_t passphrase_len = FUNC3(passphrase);

	addr[0] = (u8 *) ssid;
	len[0] = ssid_len;
	addr[1] = count_buf;
	len[1] = 4;

	/* F(P, S, c, i) = U1 xor U2 xor ... Uc
	 * U1 = PRF(P, S || i)
	 * U2 = PRF(P, U1)
	 * Uc = PRF(P, Uc-1)
	 */

	count_buf[0] = (count >> 24) & 0xff;
	count_buf[1] = (count >> 16) & 0xff;
	count_buf[2] = (count >> 8) & 0xff;
	count_buf[3] = count & 0xff;
	if (FUNC1((u8 *) passphrase, passphrase_len, 2, addr, len,
			     tmp))
		return -1;
	FUNC2(digest, tmp, SHA1_MAC_LEN);

	for (i = 1; i < iterations; i++) {
		if (FUNC0((u8 *) passphrase, passphrase_len, tmp,
			      SHA1_MAC_LEN, tmp2))
			return -1;
		FUNC2(tmp, tmp2, SHA1_MAC_LEN);
		for (j = 0; j < SHA1_MAC_LEN; j++)
			digest[j] ^= tmp2[j];
	}

	return 0;
}
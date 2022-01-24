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
struct x509_certificate {int /*<<< orphan*/  public_key_len; int /*<<< orphan*/  public_key; } ;
struct crypto_public_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 struct crypto_public_key* FUNC0 (int /*<<< orphan*/  const*,size_t) ; 
 struct crypto_public_key* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct x509_certificate*) ; 
 struct x509_certificate* FUNC5 (int /*<<< orphan*/  const*,size_t) ; 

int FUNC6(const u8 *buf, size_t len, struct crypto_public_key **pk)
{
	struct x509_certificate *cert;

	FUNC2(MSG_MSGDUMP, "TLSv1: Parse ASN.1 DER certificate",
		    buf, len);

	*pk = FUNC0(buf, len);
	if (*pk)
		return 0;

	cert = FUNC5(buf, len);
	if (cert == NULL) {
		FUNC3(MSG_DEBUG, "TLSv1: Failed to parse X.509 "
			   "certificate");
		return -1;
	}

	/* TODO
	 * verify key usage (must allow encryption)
	 *
	 * All certificate profiles, key and cryptographic formats are
	 * defined by the IETF PKIX working group [PKIX]. When a key
	 * usage extension is present, the digitalSignature bit must be
	 * set for the key to be eligible for signing, as described
	 * above, and the keyEncipherment bit must be present to allow
	 * encryption, as described above. The keyAgreement bit must be
	 * set on Diffie-Hellman certificates. (PKIX: RFC 3280)
	 */

	*pk = FUNC1(cert->public_key, cert->public_key_len);
	FUNC4(cert);

	if (*pk == NULL) {
		FUNC3(MSG_ERROR, "TLSv1: Failed to import "
			   "server public key");
		return -1;
	}

	return 0;
}
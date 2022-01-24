#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const u8 ;
struct TYPE_4__ {int len; int* oid; } ;
struct TYPE_3__ {TYPE_2__ oid; } ;
struct x509_certificate {size_t sign_value_len; TYPE_1__ signature; int /*<<< orphan*/  tbs_cert_len; int /*<<< orphan*/  tbs_cert_start; int /*<<< orphan*/  sign_value; int /*<<< orphan*/  public_key_len; int /*<<< orphan*/  public_key; } ;
struct crypto_public_key {int dummy; } ;
struct asn1_oid {int* oid; } ;
struct asn1_hdr {scalar_t__ tag; size_t length; int /*<<< orphan*/  const* payload; int /*<<< orphan*/  class; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_CLASS_UNIVERSAL ; 
 scalar_t__ ASN1_TAG_OCTETSTRING ; 
 scalar_t__ ASN1_TAG_SEQUENCE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int,struct asn1_hdr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,size_t,struct asn1_oid*,int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC2 (struct crypto_public_key*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/  const*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_public_key*) ; 
 struct crypto_public_key* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC7 (size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct asn1_oid*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 scalar_t__ FUNC15 (struct asn1_oid*) ; 
 scalar_t__ FUNC16 (struct asn1_oid*) ; 

int FUNC17(struct x509_certificate *issuer,
				     struct x509_certificate *cert)
{
	struct crypto_public_key *pk;
	u8 *data;
	const u8 *pos, *end, *next, *da_end;
	size_t data_len;
	struct asn1_hdr hdr;
	struct asn1_oid oid;
	u8 hash[32];
	size_t hash_len;

	if (!FUNC14(&cert->signature.oid) ||
	    cert->signature.oid.len != 7 ||
	    cert->signature.oid.oid[5] != 1 /* pkcs-1 */) {
		FUNC12(MSG_DEBUG, "X509: Unrecognized signature "
			   "algorithm");
		return -1;
	}

	pk = FUNC4(issuer->public_key,
				      issuer->public_key_len);
	if (pk == NULL)
		return -1;

	data_len = cert->sign_value_len;
	data = FUNC7(data_len);
	if (data == NULL) {
		FUNC3(pk);
		return -1;
	}

	if (FUNC2(pk, cert->sign_value,
					    cert->sign_value_len, data,
					    &data_len) < 0) {
		FUNC12(MSG_DEBUG, "X509: Failed to decrypt signature");
		FUNC3(pk);
		FUNC6(data);
		return -1;
	}
	FUNC3(pk);

	FUNC11(MSG_MSGDUMP, "X509: Signature data D", data, data_len);

	/*
	 * PKCS #1 v1.5, 10.1.2:
	 *
	 * DigestInfo ::= SEQUENCE {
	 *     digestAlgorithm DigestAlgorithmIdentifier,
	 *     digest Digest
	 * }
	 *
	 * DigestAlgorithmIdentifier ::= AlgorithmIdentifier
	 *
	 * Digest ::= OCTET STRING
	 *
	 */
	if (FUNC0(data, data_len, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_SEQUENCE) {
		FUNC12(MSG_DEBUG, "X509: Expected SEQUENCE "
			   "(DigestInfo) - found class %d tag 0x%x",
			   hdr.class, hdr.tag);
		FUNC6(data);
		return -1;
	}

	pos = hdr.payload;
	end = pos + hdr.length;

	/*
	 * X.509:
	 * AlgorithmIdentifier ::= SEQUENCE {
	 *     algorithm            OBJECT IDENTIFIER,
	 *     parameters           ANY DEFINED BY algorithm OPTIONAL
	 * }
	 */

	if (FUNC0(pos, end - pos, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_SEQUENCE) {
		FUNC12(MSG_DEBUG, "X509: Expected SEQUENCE "
			   "(AlgorithmIdentifier) - found class %d tag 0x%x",
			   hdr.class, hdr.tag);
		FUNC6(data);
		return -1;
	}
	da_end = hdr.payload + hdr.length;

	if (FUNC1(hdr.payload, hdr.length, &oid, &next)) {
		FUNC12(MSG_DEBUG, "X509: Failed to parse digestAlgorithm");
		FUNC6(data);
		return -1;
	}

	if (FUNC15(&oid)) {
		if (cert->signature.oid.oid[6] !=
		    5 /* sha-1WithRSAEncryption */) {
			FUNC12(MSG_DEBUG, "X509: digestAlgorithm SHA1 "
				   "does not match with certificate "
				   "signatureAlgorithm (%lu)",
				   cert->signature.oid.oid[6]);
			FUNC6(data);
			return -1;
		}
		goto skip_digest_oid;
	}

	if (FUNC16(&oid)) {
		if (cert->signature.oid.oid[6] !=
		    11 /* sha2561WithRSAEncryption */) {
			FUNC12(MSG_DEBUG, "X509: digestAlgorithm SHA256 "
				   "does not match with certificate "
				   "signatureAlgorithm (%lu)",
				   cert->signature.oid.oid[6]);
			FUNC6(data);
			return -1;
		}
		goto skip_digest_oid;
	}

	if (!FUNC13(&oid)) {
		FUNC12(MSG_DEBUG, "X509: Unrecognized digestAlgorithm");
		FUNC6(data);
		return -1;
	}
	switch (oid.oid[5]) {
	case 5: /* md5 */
		if (cert->signature.oid.oid[6] != 4 /* md5WithRSAEncryption */)
		{
			FUNC12(MSG_DEBUG, "X509: digestAlgorithm MD5 does "
				   "not match with certificate "
				   "signatureAlgorithm (%lu)",
				   cert->signature.oid.oid[6]);
			FUNC6(data);
			return -1;
		}
		break;
	case 2: /* md2 */
	case 4: /* md4 */
	default:
		FUNC12(MSG_DEBUG, "X509: Unsupported digestAlgorithm "
			   "(%lu)", oid.oid[5]);
		FUNC6(data);
		return -1;
	}

skip_digest_oid:
	/* Digest ::= OCTET STRING */
	pos = da_end;
	end = data + data_len;

	if (FUNC0(pos, end - pos, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_OCTETSTRING) {
		FUNC12(MSG_DEBUG, "X509: Expected OCTETSTRING "
			   "(Digest) - found class %d tag 0x%x",
			   hdr.class, hdr.tag);
		FUNC6(data);
		return -1;
	}
	FUNC11(MSG_MSGDUMP, "X509: Decrypted Digest",
		    hdr.payload, hdr.length);

	switch (cert->signature.oid.oid[6]) {
	case 4: /* md5WithRSAEncryption */
		FUNC5(1, &cert->tbs_cert_start, &cert->tbs_cert_len,
			   hash);
		hash_len = 16;
		FUNC11(MSG_MSGDUMP, "X509: Certificate hash (MD5)",
			    hash, hash_len);
		break;
	case 5: /* sha-1WithRSAEncryption */
		FUNC9(1, &cert->tbs_cert_start, &cert->tbs_cert_len,
			    hash);
		hash_len = 20;
		FUNC11(MSG_MSGDUMP, "X509: Certificate hash (SHA1)",
			    hash, hash_len);
		break;
	case 11: /* sha256WithRSAEncryption */
		FUNC10(1, &cert->tbs_cert_start, &cert->tbs_cert_len,
				                    hash);
		hash_len = 32;
		FUNC11(MSG_MSGDUMP, "X509: Certificate hash (SHA256)",
			    hash, hash_len);
		break;
	case 2: /* md2WithRSAEncryption */
	case 12: /* sha384WithRSAEncryption */
	case 13: /* sha512WithRSAEncryption */
	default:
		FUNC12(MSG_INFO, "X509: Unsupported certificate signature "
			   "algorithm (%lu)", cert->signature.oid.oid[6]);
		FUNC6(data);
		return -1;
	}

	if (hdr.length != hash_len ||
	    FUNC8(hdr.payload, hash, hdr.length) != 0) {
		FUNC12(MSG_INFO, "X509: Certificate Digest does not match "
			   "with calculated tbsCertificate hash");
		FUNC6(data);
		return -1;
	}

	FUNC6(data);

	FUNC12(MSG_DEBUG, "X509: Certificate Digest matches with "
		   "calculated tbsCertificate hash");

	return 0;
}
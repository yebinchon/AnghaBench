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
struct x509_certificate {int /*<<< orphan*/  key_usage; int /*<<< orphan*/  extensions_present; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; int length; int /*<<< orphan*/  payload; } ;

/* Variables and functions */
 scalar_t__ ASN1_CLASS_UNIVERSAL ; 
 scalar_t__ ASN1_TAG_BITSTRING ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  X509_EXT_KEY_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,size_t,struct asn1_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 

__attribute__((used)) static int FUNC3(struct x509_certificate *cert,
				    const u8 *pos, size_t len)
{
	struct asn1_hdr hdr;

	/*
	 * KeyUsage ::= BIT STRING {
	 *     digitalSignature        (0),
	 *     nonRepudiation          (1),
	 *     keyEncipherment         (2),
	 *     dataEncipherment        (3),
	 *     keyAgreement            (4),
	 *     keyCertSign             (5),
	 *     cRLSign                 (6),
	 *     encipherOnly            (7),
	 *     decipherOnly            (8) }
	 */

	if (FUNC1(pos, len, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_BITSTRING ||
	    hdr.length < 1) {
		FUNC2(MSG_DEBUG, "X509: Expected BIT STRING in "
			   "KeyUsage; found %d tag 0x%x len %d",
			   hdr.class, hdr.tag, hdr.length);
		return -1;
	}

	cert->extensions_present |= X509_EXT_KEY_USAGE;
	cert->key_usage = FUNC0(hdr.payload, hdr.length);

	FUNC2(MSG_DEBUG, "X509: KeyUsage 0x%lx", cert->key_usage);

	return 0;
}
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
typedef  int /*<<< orphan*/  const u8 ;
struct x509_certificate {unsigned long version; int serial_number; int /*<<< orphan*/  subject; int /*<<< orphan*/  issuer; int /*<<< orphan*/  signature; } ;
struct asn1_hdr {int tag; int length; int /*<<< orphan*/  const* payload; int /*<<< orphan*/  class; } ;
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_CLASS_CONTEXT_SPECIFIC ; 
 int /*<<< orphan*/  ASN1_CLASS_UNIVERSAL ; 
 int ASN1_TAG_INTEGER ; 
 int ASN1_TAG_SEQUENCE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 unsigned long X509_CERT_V1 ; 
 unsigned long X509_CERT_V2 ; 
 unsigned long X509_CERT_V3 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int,struct asn1_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC5 (struct x509_certificate*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,int,struct x509_certificate*,int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,int,struct x509_certificate*,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static int FUNC9(const u8 *buf, size_t len,
				      struct x509_certificate *cert,
				      const u8 **next)
{
	struct asn1_hdr hdr;
	const u8 *pos, *end;
	size_t left;
	char sbuf[128];
	unsigned long value;

	/* tbsCertificate TBSCertificate ::= SEQUENCE */
	if (FUNC0(buf, len, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_SEQUENCE) {
		FUNC2(MSG_DEBUG, "X509: tbsCertificate did not start "
			   "with a valid SEQUENCE - found class %d tag 0x%x",
			   hdr.class, hdr.tag);
		return -1;
	}
	pos = hdr.payload;
	end = *next = pos + hdr.length;

	/*
	 * version [0]  EXPLICIT Version DEFAULT v1
	 * Version  ::=  INTEGER  {  v1(0), v2(1), v3(2)  }
	 */
	if (FUNC0(pos, end - pos, &hdr) < 0)
		return -1;
	pos = hdr.payload;

	if (hdr.class == ASN1_CLASS_CONTEXT_SPECIFIC) {
		if (FUNC0(pos, end - pos, &hdr) < 0)
			return -1;

		if (hdr.class != ASN1_CLASS_UNIVERSAL ||
		    hdr.tag != ASN1_TAG_INTEGER) {
			FUNC2(MSG_DEBUG, "X509: No INTEGER tag found for "
				   "version field - found class %d tag 0x%x",
				   hdr.class, hdr.tag);
			return -1;
		}
		if (hdr.length != 1) {
			FUNC2(MSG_DEBUG, "X509: Unexpected version field "
				   "length %u (expected 1)", hdr.length);
			return -1;
		}
		pos = hdr.payload;
		left = hdr.length;
		value = 0;
		while (left) {
			value <<= 8;
			value |= *pos++;
			left--;
		}

		cert->version = value;
		if (cert->version != X509_CERT_V1 &&
		    cert->version != X509_CERT_V2 &&
		    cert->version != X509_CERT_V3) {
			FUNC2(MSG_DEBUG, "X509: Unsupported version %d",
				   cert->version + 1);
			return -1;
		}

		if (FUNC0(pos, end - pos, &hdr) < 0)
			return -1;
	} else
		cert->version = X509_CERT_V1;
	FUNC2(MSG_DEBUG, "X509: Version X.509v%d", cert->version + 1);

	/* serialNumber CertificateSerialNumber ::= INTEGER */
	if (hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_INTEGER) {
		FUNC2(MSG_DEBUG, "X509: No INTEGER tag found for "
			   "serialNumber; class=%d tag=0x%x",
			   hdr.class, hdr.tag);
		return -1;
	}

	pos = hdr.payload;
	left = hdr.length;
	while (left) {
		cert->serial_number <<= 8;
		cert->serial_number |= *pos++;
		left--;
	}
	FUNC2(MSG_DEBUG, "X509: serialNumber %lu", cert->serial_number);

	/* signature AlgorithmIdentifier */
	if (FUNC4(pos, end - pos, &cert->signature,
					    &pos))
		return -1;

	/* issuer Name */
	if (FUNC6(pos, end - pos, &cert->issuer, &pos))
		return -1;
	FUNC3(&cert->issuer, sbuf, sizeof(sbuf));
	FUNC2(MSG_DEBUG, "X509: issuer %s", sbuf);

	/* validity Validity */
	if (FUNC8(pos, end - pos, cert, &pos))
		return -1;

	/* subject Name */
	if (FUNC6(pos, end - pos, &cert->subject, &pos))
		return -1;
	FUNC3(&cert->subject, sbuf, sizeof(sbuf));
	FUNC2(MSG_DEBUG, "X509: subject %s", sbuf);

	/* subjectPublicKeyInfo SubjectPublicKeyInfo */
	if (FUNC7(pos, end - pos, cert, &pos))
		return -1;

	if (pos == end)
		return 0;

	if (cert->version == X509_CERT_V1)
		return 0;

	if (FUNC0(pos, end - pos, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_CONTEXT_SPECIFIC) {
		FUNC2(MSG_DEBUG, "X509: Expected Context-Specific"
			   " tag to parse optional tbsCertificate "
			   "field(s); parsed class %d tag 0x%x",
			   hdr.class, hdr.tag);
		return -1;
	}

	if (hdr.tag == 1) {
		/* issuerUniqueID  [1]  IMPLICIT UniqueIdentifier OPTIONAL */
		FUNC2(MSG_DEBUG, "X509: issuerUniqueID");
		/* TODO: parse UniqueIdentifier ::= BIT STRING */

		if (hdr.payload + hdr.length == end)
			return 0;

		if (FUNC0(pos, end - pos, &hdr) < 0 ||
		    hdr.class != ASN1_CLASS_CONTEXT_SPECIFIC) {
			FUNC2(MSG_DEBUG, "X509: Expected Context-Specific"
				   " tag to parse optional tbsCertificate "
				   "field(s); parsed class %d tag 0x%x",
				   hdr.class, hdr.tag);
			return -1;
		}
	}

	if (hdr.tag == 2) {
		/* subjectUniqueID [2]  IMPLICIT UniqueIdentifier OPTIONAL */
		FUNC2(MSG_DEBUG, "X509: subjectUniqueID");
		/* TODO: parse UniqueIdentifier ::= BIT STRING */

		if (hdr.payload + hdr.length == end)
			return 0;

		if (FUNC0(pos, end - pos, &hdr) < 0 ||
		    hdr.class != ASN1_CLASS_CONTEXT_SPECIFIC) {
			FUNC2(MSG_DEBUG, "X509: Expected Context-Specific"
				   " tag to parse optional tbsCertificate "
				   "field(s); parsed class %d tag 0x%x",
				   hdr.class, hdr.tag);
			return -1;
		}
	}

	if (hdr.tag != 3) {
		FUNC2(MSG_DEBUG, "X509: Ignored unexpected "
			   "Context-Specific tag %d in optional "
			   "tbsCertificate fields", hdr.tag);
		return 0;
	}

	/* extensions      [3]  EXPLICIT Extensions OPTIONAL */

	if (cert->version != X509_CERT_V3) {
		FUNC2(MSG_DEBUG, "X509: X.509%d certificate and "
			   "Extensions data which are only allowed for "
			   "version 3", cert->version + 1);
		return -1;
	}

	if (FUNC5(cert, hdr.payload, hdr.length) < 0)
		return -1;

	pos = hdr.payload + hdr.length;
	if (pos < end) {
		FUNC1(MSG_DEBUG,
			    "X509: Ignored extra tbsCertificate data",
			    pos, end - pos);
	}

	return 0;
}
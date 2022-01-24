#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct x509_name {char* email; size_t num_attr; TYPE_1__* attr; } ;
struct asn1_oid {int len; int* oid; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; int length; int /*<<< orphan*/ * payload; } ;
typedef  enum x509_name_attr_type { ____Placeholder_x509_name_attr_type } x509_name_attr_type ;
struct TYPE_2__ {int type; char* value; } ;

/* Variables and functions */
 scalar_t__ ASN1_CLASS_UNIVERSAL ; 
 scalar_t__ ASN1_TAG_SEQUENCE ; 
 scalar_t__ ASN1_TAG_SET ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 size_t X509_MAX_NAME_ATTRIBUTES ; 
 int X509_NAME_ATTR_C ; 
 int X509_NAME_ATTR_CN ; 
 int X509_NAME_ATTR_DC ; 
 int X509_NAME_ATTR_L ; 
 int X509_NAME_ATTR_NOT_USED ; 
 int X509_NAME_ATTR_O ; 
 int X509_NAME_ATTR_OU ; 
 int X509_NAME_ATTR_ST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int,struct asn1_hdr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int,struct asn1_oid*,int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int) ; 
 size_t FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct x509_name*) ; 

__attribute__((used)) static int FUNC11(const u8 *buf, size_t len, struct x509_name *name,
			   const u8 **next)
{
	struct asn1_hdr hdr;
	const u8 *pos, *end, *set_pos, *set_end, *seq_pos, *seq_end;
	struct asn1_oid oid;
	char *val;

	/*
	 * Name ::= CHOICE { RDNSequence }
	 * RDNSequence ::= SEQUENCE OF RelativeDistinguishedName
	 * RelativeDistinguishedName ::= SET OF AttributeTypeAndValue
	 * AttributeTypeAndValue ::= SEQUENCE {
	 *     type     AttributeType,
	 *     value    AttributeValue
	 * }
	 * AttributeType ::= OBJECT IDENTIFIER
	 * AttributeValue ::= ANY DEFINED BY AttributeType
	 */

	if (FUNC0(buf, len, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_SEQUENCE) {
		FUNC9(MSG_DEBUG, "X509: Expected SEQUENCE "
			   "(Name / RDNSequencer) - found class %d tag 0x%x",
			   hdr.class, hdr.tag);
		return -1;
	}
	pos = hdr.payload;

	if (pos + hdr.length > buf + len)
		return -1;

	end = *next = pos + hdr.length;

	while (pos < end) {
		enum x509_name_attr_type type;

		if (FUNC0(pos, end - pos, &hdr) < 0 ||
		    hdr.class != ASN1_CLASS_UNIVERSAL ||
		    hdr.tag != ASN1_TAG_SET) {
			FUNC9(MSG_DEBUG, "X509: Expected SET "
				   "(RelativeDistinguishedName) - found class "
				   "%d tag 0x%x", hdr.class, hdr.tag);
			FUNC10(name);
			return -1;
		}

		set_pos = hdr.payload;
		pos = set_end = hdr.payload + hdr.length;

		if (FUNC0(set_pos, set_end - set_pos, &hdr) < 0 ||
		    hdr.class != ASN1_CLASS_UNIVERSAL ||
		    hdr.tag != ASN1_TAG_SEQUENCE) {
			FUNC9(MSG_DEBUG, "X509: Expected SEQUENCE "
				   "(AttributeTypeAndValue) - found class %d "
				   "tag 0x%x", hdr.class, hdr.tag);
			FUNC10(name);
			return -1;
		}

		seq_pos = hdr.payload;
		seq_end = hdr.payload + hdr.length;

		if (FUNC1(seq_pos, seq_end - seq_pos, &oid, &seq_pos)) {
			FUNC10(name);
			return -1;
		}

		if (FUNC0(seq_pos, seq_end - seq_pos, &hdr) < 0 ||
		    hdr.class != ASN1_CLASS_UNIVERSAL) {
			FUNC9(MSG_DEBUG, "X509: Failed to parse "
				   "AttributeValue");
			FUNC10(name);
			return -1;
		}

		/* RFC 3280:
		 * MUST: country, organization, organizational-unit,
		 * distinguished name qualifier, state or province name,
		 * common name, serial number.
		 * SHOULD: locality, title, surname, given name, initials,
		 * pseudonym, generation qualifier.
		 * MUST: domainComponent (RFC 2247).
		 */
		type = X509_NAME_ATTR_NOT_USED;
		if (oid.len == 4 &&
		    oid.oid[0] == 2 && oid.oid[1] == 5 && oid.oid[2] == 4) {
			/* id-at ::= 2.5.4 */
			switch (oid.oid[3]) {
			case 3:
				/* commonName */
				type = X509_NAME_ATTR_CN;
				break;
			case 6:
				/*  countryName */
				type = X509_NAME_ATTR_C;
				break;
			case 7:
				/* localityName */
				type = X509_NAME_ATTR_L;
				break;
			case 8:
				/* stateOrProvinceName */
				type = X509_NAME_ATTR_ST;
				break;
			case 10:
				/* organizationName */
				type = X509_NAME_ATTR_O;
				break;
			case 11:
				/* organizationalUnitName */
				type = X509_NAME_ATTR_OU;
				break;
			}
		} else if (oid.len == 7 &&
			   oid.oid[0] == 1 && oid.oid[1] == 2 &&
			   oid.oid[2] == 840 && oid.oid[3] == 113549 &&
			   oid.oid[4] == 1 && oid.oid[5] == 9 &&
			   oid.oid[6] == 1) {
			/* 1.2.840.113549.1.9.1 - e-mailAddress */
			FUNC3(name->email);
			name->email = FUNC4(hdr.length + 1);
			if (name->email == NULL) {
				FUNC10(name);
				return -1;
			}
			FUNC5(name->email, hdr.payload, hdr.length);
			name->email[hdr.length] = '\0';
			continue;
		} else if (oid.len == 7 &&
			   oid.oid[0] == 0 && oid.oid[1] == 9 &&
			   oid.oid[2] == 2342 && oid.oid[3] == 19200300 &&
			   oid.oid[4] == 100 && oid.oid[5] == 1 &&
			   oid.oid[6] == 25) {
			/* 0.9.2342.19200300.100.1.25 - domainComponent */
			type = X509_NAME_ATTR_DC;
		}

		if (type == X509_NAME_ATTR_NOT_USED) {
			FUNC7(MSG_DEBUG, "X509: Unrecognized OID",
				    (u8 *) oid.oid,
				    oid.len * sizeof(oid.oid[0]));
			FUNC8(MSG_MSGDUMP, "X509: Attribute Data",
					  hdr.payload, hdr.length);
			continue;
		}

		if (name->num_attr == X509_MAX_NAME_ATTRIBUTES) {
			FUNC9(MSG_INFO, "X509: Too many Name attributes");
			FUNC10(name);
			return -1;
		}

		val = (char *)FUNC2(hdr.payload, hdr.length);
		if (val == NULL) {
			FUNC10(name);
			return -1;
		}
		if (FUNC6(val) != hdr.length) {
			FUNC9(MSG_INFO, "X509: Reject certificate with "
				   "embedded NUL byte in a string (%s[NUL])",
				   val);
			FUNC3(val);
			FUNC10(name);
			return -1;
		}

		name->attr[name->num_attr].type = type;
		name->attr[name->num_attr].value = val;
		name->num_attr++;
	}

	return 0;
}
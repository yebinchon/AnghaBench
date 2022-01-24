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
struct tlsv1_credentials {scalar_t__ dh_p_len; scalar_t__ dh_g_len; int /*<<< orphan*/ * dh_g; int /*<<< orphan*/ * dh_p; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; scalar_t__ length; int /*<<< orphan*/ * payload; } ;

/* Variables and functions */
 scalar_t__ ASN1_CLASS_UNIVERSAL ; 
 scalar_t__ ASN1_TAG_INTEGER ; 
 scalar_t__ ASN1_TAG_SEQUENCE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int,struct asn1_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct tlsv1_credentials *cred,
				  const u8 *dh, size_t len)
{
	struct asn1_hdr hdr;
	const u8 *pos, *end;

	pos = dh;
	end = dh + len;

	/*
	 * DHParameter ::= SEQUENCE {
	 *   prime INTEGER, -- p
	 *   base INTEGER, -- g
	 *   privateValueLength INTEGER OPTIONAL }
	 */

	/* DHParamer ::= SEQUENCE */
	if (FUNC0(pos, len, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_SEQUENCE) {
		FUNC5(MSG_DEBUG, "DH: DH parameters did not start with a "
			   "valid SEQUENCE - found class %d tag 0x%x",
			   hdr.class, hdr.tag);
		return -1;
	}
	pos = hdr.payload;

	/* prime INTEGER */
	if (FUNC0(pos, end - pos, &hdr) < 0)
		return -1;

	if (hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_INTEGER) {
		FUNC5(MSG_DEBUG, "DH: No INTEGER tag found for p; "
			   "class=%d tag=0x%x", hdr.class, hdr.tag);
		return -1;
	}

	FUNC4(MSG_MSGDUMP, "DH: prime (p)", hdr.payload, hdr.length);
	if (hdr.length == 0)
		return -1;
	FUNC1(cred->dh_p);
	cred->dh_p = FUNC2(hdr.length);
	if (cred->dh_p == NULL)
		return -1;
	FUNC3(cred->dh_p, hdr.payload, hdr.length);
	cred->dh_p_len = hdr.length;
	pos = hdr.payload + hdr.length;

	/* base INTEGER */
	if (FUNC0(pos, end - pos, &hdr) < 0)
		return -1;

	if (hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_INTEGER) {
		FUNC5(MSG_DEBUG, "DH: No INTEGER tag found for g; "
			   "class=%d tag=0x%x", hdr.class, hdr.tag);
		return -1;
	}

	FUNC4(MSG_MSGDUMP, "DH: base (g)", hdr.payload, hdr.length);
	if (hdr.length == 0)
		return -1;
	FUNC1(cred->dh_g);
	cred->dh_g = FUNC2(hdr.length);
	if (cred->dh_g == NULL)
		return -1;
	FUNC3(cred->dh_g, hdr.payload, hdr.length);
	cred->dh_g_len = hdr.length;

	return 0;
}
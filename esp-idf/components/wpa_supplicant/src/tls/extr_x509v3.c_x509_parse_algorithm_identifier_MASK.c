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
struct x509_algorithm_identifier {int /*<<< orphan*/  oid; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; int length; int /*<<< orphan*/ * payload; } ;

/* Variables and functions */
 scalar_t__ ASN1_CLASS_UNIVERSAL ; 
 scalar_t__ ASN1_TAG_SEQUENCE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,size_t,struct asn1_hdr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(
	const u8 *buf, size_t len,
	struct x509_algorithm_identifier *id, const u8 **next)
{
	struct asn1_hdr hdr;
	const u8 *pos, *end;

	/*
	 * AlgorithmIdentifier ::= SEQUENCE {
	 *     algorithm            OBJECT IDENTIFIER,
	 *     parameters           ANY DEFINED BY algorithm OPTIONAL
	 * }
	 */

	if (FUNC0(buf, len, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_SEQUENCE) {
		FUNC2(MSG_DEBUG, "X509: Expected SEQUENCE "
			   "(AlgorithmIdentifier) - found class %d tag 0x%x",
			   hdr.class, hdr.tag);
		return -1;
	}
	pos = hdr.payload;
	end = pos + hdr.length;

	if (end > buf + len)
		return -1;

	*next = end;

	if (FUNC1(pos, end - pos, &id->oid, &pos))
		return -1;

	/* TODO: optional parameters */

	return 0;
}
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
typedef  void* u8 ;
struct wpabuf {int dummy; } ;
struct eap_hdr {int /*<<< orphan*/  length; void* identifier; void* code; } ;
typedef  int /*<<< orphan*/  EapType ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TYPE_EXPANDED ; 
 int EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 struct wpabuf* FUNC1 (size_t) ; 
 struct eap_hdr* FUNC2 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ ) ; 

struct wpabuf * FUNC6(int vendor, EapType type, size_t payload_len,
			      u8 code, u8 identifier)
{
	struct wpabuf *buf;
	struct eap_hdr *hdr;
	size_t len;

	len = sizeof(struct eap_hdr) + (vendor == EAP_VENDOR_IETF ? 1 : 8) +
		payload_len;
	buf = FUNC1(len);
	if (buf == NULL)
		return NULL;

	hdr = FUNC2(buf, sizeof(*hdr));
	hdr->code = code;
	hdr->identifier = identifier;
	hdr->length = FUNC0(len);

	if (vendor == EAP_VENDOR_IETF) {
		FUNC5(buf, type);
	} else {
		FUNC5(buf, EAP_TYPE_EXPANDED);
		FUNC3(buf, vendor);
		FUNC4(buf, type);
	}

	return buf;
}
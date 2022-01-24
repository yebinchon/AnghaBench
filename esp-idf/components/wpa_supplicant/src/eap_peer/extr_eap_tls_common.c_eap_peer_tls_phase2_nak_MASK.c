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
struct wpabuf {int dummy; } ;
struct eap_method_type {scalar_t__ vendor; int method; } ;
struct eap_hdr {int /*<<< orphan*/  identifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_TYPE_NAK ; 
 scalar_t__ EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct wpabuf* FUNC0 (scalar_t__,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int) ; 

int FUNC5(struct eap_method_type *types, size_t num_types,
			    struct eap_hdr *hdr, struct wpabuf **resp)
{
	u8 *pos = (u8 *) (hdr + 1);
	size_t i;

	/* TODO: add support for expanded Nak */
	FUNC3(MSG_DEBUG, "TLS: Phase Request: Nak type=%d\n", *pos);
	FUNC2(MSG_DEBUG, "TLS: Allowed Phase2 EAP types",
		    (u8 *) types, num_types * sizeof(struct eap_method_type));
	*resp = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_NAK, num_types,
			      EAP_CODE_RESPONSE, hdr->identifier);
	if (*resp == NULL)
		return -1;

	for (i = 0; i < num_types; i++) {
		if (types[i].vendor == EAP_VENDOR_IETF &&
		    types[i].method < 256)
			FUNC4(*resp, types[i].method);
	}

	FUNC1(*resp);

	return 0;
}
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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct wps_parse_attr {int dummy; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ATTR_NETWORK_KEY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wps_parse_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__* FUNC4 (struct wpabuf const*) ; 
 int FUNC5 (struct wpabuf const*) ; 
 scalar_t__ FUNC6 (struct wps_parse_attr*,int,scalar_t__ const*,int) ; 

int FUNC7(const struct wpabuf *msg, struct wps_parse_attr *attr)
{
	const u8 *pos, *end;
	u16 type, len;
#ifdef WPS_WORKAROUNDS
	u16 prev_type = 0;
#endif /* WPS_WORKAROUNDS */

	FUNC1(attr, 0, sizeof(*attr));
	pos = FUNC4(msg);
	end = pos + FUNC5(msg);

	while (pos < end) {
		if (end - pos < 4) {
			FUNC3(MSG_DEBUG,  "WPS: Invalid message - "
				   "%lu bytes remaining",
				   (unsigned long) (end - pos));
			return -1;
		}

		type = FUNC0(pos);
		pos += 2;
		len = FUNC0(pos);
		pos += 2;
		FUNC3(MSG_DEBUG, "WPS: attr type=0x%x len=%u",
			   type, len);
		if (len > end - pos) {
			FUNC3(MSG_DEBUG,  "WPS: Attribute overflow");
			FUNC2(MSG_MSGDUMP, "WPS: Message data", msg);
#ifdef WPS_WORKAROUNDS
			/*
			 * Some deployed APs seem to have a bug in encoding of
			 * Network Key attribute in the Credential attribute
			 * where they add an extra octet after the Network Key
			 * attribute at least when open network is being
			 * provisioned.
			 */
			if ((type & 0xff00) != 0x1000 &&
			    prev_type == ATTR_NETWORK_KEY) {
				wpa_printf(MSG_DEBUG,  "WPS: Workaround - try "
					   "to skip unexpected octet after "
					   "Network Key");
				pos -= 3;
				continue;
			}
#endif /* WPS_WORKAROUNDS */
			return -1;
		}

#ifdef WPS_WORKAROUNDS
		if (type == 0 && len == 0) {
			/*
			 * Mac OS X 10.6 seems to be adding 0x00 padding to the
			 * end of M1. Skip those to avoid interop issues.
			 */
			int i;
			for (i = 0; i < end - pos; i++) {
				if (pos[i])
					break;
			}
			if (i == end - pos) {
				wpa_printf(MSG_DEBUG,  "WPS: Workaround - skip "
					   "unexpected message padding");
				break;
			}
		}
#endif /* WPS_WORKAROUNDS */

		if (FUNC6(attr, type, pos, len) < 0)
			return -1;

#ifdef WPS_WORKAROUNDS
		prev_type = type;
#endif /* WPS_WORKAROUNDS */
		pos += len;
	}

	return 0;
}
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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ieee802_1x_hdr {int type; } ;

/* Variables and functions */
 int ESP_OK ; 
#define  IEEE802_1X_TYPE_EAPOL_KEY 131 
#define  IEEE802_1X_TYPE_EAPOL_LOGOFF 130 
#define  IEEE802_1X_TYPE_EAPOL_START 129 
#define  IEEE802_1X_TYPE_EAP_PACKET 128 
 int /*<<< orphan*/  MSG_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(u8 *src_addr, u8 *buf, u32 len, uint8_t *bssid)
{
    struct ieee802_1x_hdr *hdr;
    int ret = ESP_OK;

    hdr = (struct ieee802_1x_hdr *) buf;

    switch (hdr->type) {
	    case IEEE802_1X_TYPE_EAPOL_START:
	    case IEEE802_1X_TYPE_EAP_PACKET:
	    case IEEE802_1X_TYPE_EAPOL_LOGOFF:
		    ret = FUNC0(src_addr, buf, len, bssid);
		    break;
	    case IEEE802_1X_TYPE_EAPOL_KEY:
            ret = FUNC2(src_addr, buf, len);
		    break;
	    default:
		FUNC1(MSG_ERROR, "Unknown EAPOL packet type - %d\n", hdr->type);
		    break;
    }

	return ret;
}
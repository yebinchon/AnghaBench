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
struct wps_data {int /*<<< orphan*/  keywrapkey; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 size_t const ATTR_ENCR_SETTINGS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 size_t const FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC5 (struct wpabuf*,size_t const) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,size_t const) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,struct wpabuf*) ; 

int FUNC8(struct wps_data *wps, struct wpabuf *msg,
			    struct wpabuf *plain)
{
	size_t pad_len;
	const size_t block_size = 16;
	u8 *iv, *data;

	FUNC3(MSG_DEBUG,  "WPS:  * Encrypted Settings");

	/* PKCS#5 v2.0 pad */
	pad_len = block_size - FUNC4(plain) % block_size;
	FUNC1(FUNC5(plain, pad_len), pad_len, pad_len);

	FUNC6(msg, ATTR_ENCR_SETTINGS);
	FUNC6(msg, block_size + FUNC4(plain));

	iv = FUNC5(msg, block_size);
	if (FUNC2(iv, block_size) < 0)
		return -1;

	data = FUNC5(msg, 0);
	FUNC7(msg, plain);
	FUNC3(MSG_DEBUG,  "WPS:  * AES 128 Encrypted Settings");
	if (FUNC0(wps->keywrapkey, iv, data, FUNC4(plain)))
		return -1;
	return 0;
}
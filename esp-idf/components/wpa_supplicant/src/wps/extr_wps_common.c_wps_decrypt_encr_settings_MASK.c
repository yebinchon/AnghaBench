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
typedef  size_t u8 ;
struct wps_data {int /*<<< orphan*/  keywrapkey; } ;
struct wpabuf {size_t used; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 size_t* FUNC6 (struct wpabuf*) ; 
 size_t FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,size_t const*,size_t) ; 

struct wpabuf * FUNC10(struct wps_data *wps, const u8 *encr,
					  size_t encr_len)
{
	struct wpabuf *decrypted;
	const size_t block_size = 16;
	size_t i;
	u8 pad;
	const u8 *pos;

	/* AES-128-CBC */
	if (encr == NULL || encr_len < 2 * block_size || encr_len % block_size)
	{
		FUNC3(MSG_DEBUG,  "WPS: No Encrypted Settings received");
		return NULL;
	}

	decrypted = FUNC4(encr_len - block_size);
	if (decrypted == NULL)
		return NULL;

	FUNC1(MSG_MSGDUMP, "WPS: Encrypted Settings", encr, encr_len);
	FUNC9(decrypted, encr + block_size, encr_len - block_size);
	FUNC3(MSG_DEBUG,  "WPS: AES Decrypt setting");
	if (FUNC0(wps->keywrapkey, encr, FUNC8(decrypted),
				        FUNC7(decrypted))) {
		FUNC5(decrypted);
		return NULL;
	}

	FUNC2(MSG_MSGDUMP, "WPS: Decrypted Encrypted Settings",
			    decrypted);

	pos = FUNC6(decrypted) + FUNC7(decrypted) - 1;
	pad = *pos;
	if (pad > FUNC7(decrypted)) {
		FUNC3(MSG_DEBUG,  "WPS: Invalid PKCS#5 v2.0 pad value");
		FUNC5(decrypted);
		return NULL;
	}
	for (i = 0; i < pad; i++) {
		if (*pos-- != pad) {
			FUNC3(MSG_DEBUG,  "WPS: Invalid PKCS#5 v2.0 pad "
				   "string");
			FUNC5(decrypted);
			return NULL;
		}
	}
	decrypted->used -= pad;

	return decrypted;
}
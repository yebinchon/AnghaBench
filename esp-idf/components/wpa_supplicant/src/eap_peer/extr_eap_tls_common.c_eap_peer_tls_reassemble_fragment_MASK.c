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
struct wpabuf {int dummy; } ;
struct eap_ssl_data {size_t tls_in_left; struct wpabuf const* tls_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct eap_ssl_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC2 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf const*,struct wpabuf const*) ; 
 scalar_t__ FUNC4 (struct wpabuf const**,size_t) ; 

__attribute__((used)) static int FUNC5(struct eap_ssl_data *data,
					    const struct wpabuf *in_data)
{
	size_t tls_in_len, in_len;

	tls_in_len = data->tls_in ? FUNC2(data->tls_in) : 0;
	in_len = in_data ? FUNC2(in_data) : 0;

	if (tls_in_len + in_len == 0) {
		/* No message data received?! */
		FUNC1(MSG_WARNING, "SSL: Invalid reassembly state: "
			   "tls_in_left=%lu tls_in_len=%lu in_len=%lu",
			   (unsigned long) data->tls_in_left,
			   (unsigned long) tls_in_len,
			   (unsigned long) in_len);
		FUNC0(data);
		return -1;
	}

	if (tls_in_len + in_len > 65536) {
		/*
		 * Limit length to avoid rogue servers from causing large
		 * memory allocations.
		 */
		FUNC1(MSG_INFO, "SSL: Too long TLS fragment (size over "
			   "64 kB)");
		FUNC0(data);
		return -1;
	}

	if (in_len > data->tls_in_left) {
		/* Sender is doing something odd - reject message */
		FUNC1(MSG_INFO, "SSL: more data than TLS message length "
			   "indicated");
		FUNC0(data);
		return -1;
	}

	if (FUNC4(&data->tls_in, in_len) < 0) {
		FUNC1(MSG_INFO, "SSL: Could not allocate memory for TLS "
			   "data");
		FUNC0(data);
		return -1;
	}
	if (in_data)
		FUNC3(data->tls_in, in_data);
	data->tls_in_left -= in_len;

	if (data->tls_in_left > 0) {
		FUNC1(MSG_INFO, "SSL: Need %lu bytes more input "
			   "data", (unsigned long) data->tls_in_left);
		return 1;
	}

	return 0;
}
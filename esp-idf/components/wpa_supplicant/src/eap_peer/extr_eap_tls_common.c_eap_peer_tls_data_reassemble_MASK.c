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
struct eap_ssl_data {scalar_t__ tls_in_left; struct wpabuf const* tls_in; } ;

/* Variables and functions */
 int FUNC0 (struct eap_ssl_data*,struct wpabuf const*) ; 
 struct wpabuf const* FUNC1 (struct wpabuf const*) ; 
 scalar_t__ FUNC2 (struct wpabuf const*) ; 

__attribute__((used)) static const struct wpabuf * FUNC3(
	struct eap_ssl_data *data, const struct wpabuf *in_data,
	int *need_more_input)
{
	*need_more_input = 0;

	if (data->tls_in_left > FUNC2(in_data) || data->tls_in) {
		/* Message has fragments */
		int res = FUNC0(data, in_data);
		if (res) {
			if (res == 1)
				*need_more_input = 1;
			return NULL;
		}

		/* Message is now fully reassembled. */
	} else {
		/* No fragments in this message, so just make a copy of it. */
		data->tls_in_left = 0;
		data->tls_in = FUNC1(in_data);
		if (data->tls_in == NULL)
			return NULL;
	}

	return data->tls_in;
}
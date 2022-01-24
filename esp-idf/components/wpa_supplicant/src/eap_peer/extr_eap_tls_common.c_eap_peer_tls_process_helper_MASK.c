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
struct eap_ssl_data {int /*<<< orphan*/ * tls_out; int /*<<< orphan*/  conn; int /*<<< orphan*/  ssl_ctx; } ;
struct eap_sm {int dummy; } ;
typedef  int /*<<< orphan*/  EapType ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct eap_ssl_data*) ; 
 int FUNC1 (struct eap_sm*,struct eap_ssl_data*,int /*<<< orphan*/  const*,size_t,struct wpabuf**) ; 
 int FUNC2 (struct eap_ssl_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,struct wpabuf**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct eap_sm *sm, struct eap_ssl_data *data,
				EapType eap_type, int peap_version,
				u8 id, const u8 *in_data, size_t in_len,
				struct wpabuf **out_data)
{
	int ret = 0;

	*out_data = NULL;

	if (data->tls_out && FUNC6(data->tls_out) > 0 && in_len > 0) {
		FUNC4(MSG_DEBUG, "SSL: Received non-ACK when output "
			   "fragments are waiting to be sent out");
		return -1;
	}

	if (data->tls_out == NULL || FUNC6(data->tls_out) == 0) {
		/*
		 * No more data to send out - expect to receive more data from
		 * the AS.
		 */
		int res = FUNC1(sm, data, in_data, in_len,
						out_data);
		if (res) {
			/*
			 * Input processing failed (res = -1) or more data is
			 * needed (res = 1).
			 */
			return res;
		}

		/*
		 * The incoming message has been reassembled and processed. The
		 * response was allocated into data->tls_out buffer.
		 */
	}

	if (data->tls_out == NULL) {
		/*
		 * No outgoing fragments remaining from the previous message
		 * and no new message generated. This indicates an error in TLS
		 * processing.
		 */
		FUNC0(data);
		return -1;
	}

	if (FUNC3(data->ssl_ctx, data->conn)) {
		/* TLS processing has failed - return error */
		FUNC4(MSG_DEBUG, "SSL: Failed - tls_out available to "
			   "report error");
		ret = -1;
		/* TODO: clean pin if engine used? */
	}

	if (data->tls_out == NULL || FUNC6(data->tls_out) == 0) {
		/*
		 * TLS negotiation should now be complete since all other cases
		 * needing more data should have been caught above based on
		 * the TLS Message Length field.
		 */
		FUNC4(MSG_DEBUG, "SSL: No data to be sent out");
		FUNC5(data->tls_out);
		data->tls_out = NULL;
		return 1;
	}

	/* Send the pending message (in fragments, if needed). */
	return FUNC2(data, eap_type, peap_version, id, ret,
				      out_data);
}
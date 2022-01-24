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
struct eap_ssl_data {int /*<<< orphan*/  conn; int /*<<< orphan*/  ssl_ctx; struct wpabuf* tls_out; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 struct wpabuf* FUNC0 (struct eap_ssl_data*,struct wpabuf*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_ssl_data*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,struct wpabuf**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC9(struct eap_sm *sm, struct eap_ssl_data *data,
				 const u8 *in_data, size_t in_len,
				 struct wpabuf **out_data)
{
	const struct wpabuf *msg;
	int need_more_input;
	struct wpabuf *appl_data;
	struct wpabuf buf;

	FUNC8(&buf, in_data, in_len);
	msg = FUNC0(data, &buf, &need_more_input);
	if (msg == NULL)
		return need_more_input ? 1 : -1;

	/* Full TLS message reassembled - continue handshake processing */
	if (data->tls_out) {
		/* This should not happen.. */
		FUNC6(MSG_INFO, "SSL: eap_tls_process_input - pending "
			   "tls_out data even though tls_out_len = 0");
		FUNC7(data->tls_out);
		//WPA_ASSERT(data->tls_out == NULL);
	}
	appl_data = NULL;
	data->tls_out = FUNC4(data->ssl_ctx, data->conn,
						 msg, &appl_data);

	FUNC1(data);
	if (appl_data &&
	    FUNC2(data->ssl_ctx, data->conn) &&
	    !FUNC3(data->ssl_ctx, data->conn)) {
		FUNC5(MSG_MSGDUMP, "SSL: Application data",
				    appl_data);
		*out_data = appl_data;
		return 2;
	}

	FUNC7(appl_data);

	return 0;
}
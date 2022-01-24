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
struct tls_connection {scalar_t__ server; scalar_t__ client; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf const*) ; 
 scalar_t__ FUNC5 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 

struct wpabuf * FUNC9(void *tls_ctx,
				       struct tls_connection *conn,
				       const struct wpabuf *in_data)
{
#ifdef CONFIG_TLS_INTERNAL_CLIENT
	if (conn->client) {
		struct wpabuf *buf;
		int res;
		buf = wpabuf_alloc(wpabuf_len(in_data) + 300);
		if (buf == NULL)
			return NULL;
		res = tlsv1_client_encrypt(conn->client, wpabuf_head(in_data),
					   wpabuf_len(in_data),
					   wpabuf_mhead(buf),
					   wpabuf_size(buf));
		if (res < 0) {
			wpabuf_free(buf);
			return NULL;
		}
		wpabuf_put(buf, res);
		return buf;
	}
#endif /* CONFIG_TLS_INTERNAL_CLIENT */
#ifdef CONFIG_TLS_INTERNAL_SERVER
	if (conn->server) {
		struct wpabuf *buf;
		int res;
		buf = wpabuf_alloc(wpabuf_len(in_data) + 300);
		if (buf == NULL)
			return NULL;
		res = tlsv1_server_encrypt(conn->server, wpabuf_head(in_data),
					   wpabuf_len(in_data),
					   wpabuf_mhead(buf),
					   wpabuf_size(buf));
		if (res < 0) {
			wpabuf_free(buf);
			return NULL;
		}
		wpabuf_put(buf, res);
		return buf;
	}
#endif /* CONFIG_TLS_INTERNAL_SERVER */
	return NULL;
}
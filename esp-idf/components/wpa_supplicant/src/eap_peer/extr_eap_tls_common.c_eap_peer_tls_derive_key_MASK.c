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
struct tls_keys {size_t client_random_len; size_t server_random_len; int /*<<< orphan*/  master_key_len; int /*<<< orphan*/ * master_key; int /*<<< orphan*/ * server_random; int /*<<< orphan*/ * client_random; } ;
struct eap_ssl_data {int /*<<< orphan*/  conn; int /*<<< orphan*/  ssl_ctx; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tls_keys*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t) ; 

u8 * FUNC6(struct eap_sm *sm, struct eap_ssl_data *data,
			     const char *label, size_t len)
{
	struct tls_keys keys;
	u8 *rnd = NULL, *out;

	out = FUNC1(len);
	if (out == NULL)
		return NULL;

	/* First, try to use TLS library function for PRF, if available. */
	if (FUNC4(data->ssl_ctx, data->conn, label, 0, out, len)
	    == 0)
		return out;

	/*
	 * TLS library did not support key generation, so get the needed TLS
	 * session parameters and use an internal implementation of TLS PRF to
	 * derive the key.
	 */
	if (FUNC3(data->ssl_ctx, data->conn, &keys))
		goto fail;

	if (keys.client_random == NULL || keys.server_random == NULL ||
	    keys.master_key == NULL)
		goto fail;

	rnd = FUNC1(keys.client_random_len + keys.server_random_len);
	if (rnd == NULL)
		goto fail;
	FUNC2(rnd, keys.client_random, keys.client_random_len);
	FUNC2(rnd + keys.client_random_len, keys.server_random,
		  keys.server_random_len);

	if (FUNC5(keys.master_key, keys.master_key_len,
			     label, rnd, keys.client_random_len +
			     keys.server_random_len, out, len)) {
		goto fail;
	}

	FUNC0(rnd);
	return out;

fail:
	FUNC0(out);
	FUNC0(rnd);
	return NULL;
}
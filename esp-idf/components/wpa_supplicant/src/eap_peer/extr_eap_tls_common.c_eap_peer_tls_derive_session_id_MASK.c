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
struct tls_keys {int client_random_len; int server_random_len; int /*<<< orphan*/ * server_random; int /*<<< orphan*/ * client_random; int /*<<< orphan*/ * master_key; } ;
struct eap_ssl_data {int /*<<< orphan*/  conn; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tls_keys*) ; 

u8 * FUNC3(struct eap_sm *sm,
				    struct eap_ssl_data *data, u8 eap_type,
				    size_t *len)
{
	struct tls_keys keys;
	u8 *out;

	/*
	 * TLS library did not support session ID generation,
	 * so get the needed TLS session parameters
	 */
	if (FUNC2(sm->ssl_ctx, data->conn, &keys))
		return NULL;

	if (keys.client_random == NULL || keys.server_random == NULL ||
	    keys.master_key == NULL)
		return NULL;

	*len = 1 + keys.client_random_len + keys.server_random_len;
	out = FUNC0(*len);
	if (out == NULL)
		return NULL;

	/* Session-Id = EAP type || client.random || server.random */
	out[0] = eap_type;
	FUNC1(out + 1, keys.client_random, keys.client_random_len);
	FUNC1(out + 1 + keys.client_random_len, keys.server_random,
	          keys.server_random_len);

	return out;
}
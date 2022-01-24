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
struct tls_connection_params {int dummy; } ;
struct eap_ssl_data {int include_tls_length; int /*<<< orphan*/  tls_out_limit; int /*<<< orphan*/  ssl_ctx; int /*<<< orphan*/  eap_type; struct eap_sm* eap; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;
struct eap_peer_config {scalar_t__ phase1; int /*<<< orphan*/  fragment_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (struct eap_sm*,struct eap_ssl_data*,struct eap_peer_config*,struct tls_connection_params*) ; 
 scalar_t__ FUNC1 (struct eap_sm*,struct eap_ssl_data*,struct tls_connection_params*,struct eap_peer_config*) ; 
 scalar_t__ FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(struct eap_sm *sm, struct eap_ssl_data *data,
			  struct eap_peer_config *config, u8 eap_type)
{
	struct tls_connection_params params;

	if (config == NULL)
		return -1;

	data->eap = sm;
	data->eap_type = eap_type;
	data->ssl_ctx = sm->ssl_ctx;
	if (FUNC1(sm, data, &params, config) < 0) /* no phase2 */
		return -1;

	if (FUNC0(sm, data, config, &params) < 0)
		return -1;

	data->tls_out_limit = config->fragment_size;

	if (config->phase1 &&
	    FUNC2(config->phase1, "include_tls_length=1")) {
		FUNC3(MSG_INFO, "TLS: Include TLS Message Length in "
			   "unfragmented packets");
		data->include_tls_length = 1;
	}

	return 0;
}
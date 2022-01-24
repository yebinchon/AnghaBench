#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct flow_divert_group {int /*<<< orphan*/ * token_key; int /*<<< orphan*/  token_key_size; } ;
typedef  int /*<<< orphan*/ * mbuf_t ;
struct TYPE_2__ {int /*<<< orphan*/  ccsha1_di; int /*<<< orphan*/  (* cchmac_final_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* cchmac_update_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* cchmac_init_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ENOPROTOOPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* g_crypto_funcs ; 
 int /*<<< orphan*/  hmac_ctx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(mbuf_t packet, struct flow_divert_group *group, uint8_t *hmac)
{
	mbuf_t	curr_mbuf	= packet;

	if (g_crypto_funcs == NULL || group->token_key == NULL) {
		return ENOPROTOOPT;
	}

	FUNC0(g_crypto_funcs->ccsha1_di, hmac_ctx);
	g_crypto_funcs->cchmac_init_fn(g_crypto_funcs->ccsha1_di, hmac_ctx, group->token_key_size, group->token_key);

	while (curr_mbuf != NULL) {
		g_crypto_funcs->cchmac_update_fn(g_crypto_funcs->ccsha1_di, hmac_ctx, FUNC2(curr_mbuf), FUNC1(curr_mbuf));
		curr_mbuf = FUNC3(curr_mbuf);
	}

	g_crypto_funcs->cchmac_final_fn(g_crypto_funcs->ccsha1_di, hmac_ctx, hmac);

	return 0;
}
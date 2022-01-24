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
struct ssl_ctx_st {int dummy; } ;

/* Variables and functions */
 struct ssl_ctx_st* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ssl_ctx_st*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ssl_ctx_st*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssl_ctx_st*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_OP_CIPHER_SERVER_PREFERENCE ; 
 int /*<<< orphan*/  SSL_OP_NO_TICKET ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  TmpDhCallback ; 

struct ssl_ctx_st *FUNC5(bool server_mode)
{
	struct ssl_ctx_st *ctx = FUNC0(FUNC4());

#ifdef	SSL_OP_NO_TICKET
	SSL_CTX_set_options(ctx, SSL_OP_NO_TICKET);
#endif	// SSL_OP_NO_TICKET

#ifdef	SSL_OP_CIPHER_SERVER_PREFERENCE
	if (server_mode)
	{
		SSL_CTX_set_options(ctx, SSL_OP_CIPHER_SERVER_PREFERENCE);
	}
#endif	// SSL_OP_CIPHER_SERVER_PREFERENCE

	FUNC3(ctx, TmpDhCallback);

#ifdef	SSL_CTX_set_ecdh_auto
	SSL_CTX_set_ecdh_auto(ctx, 1);
#endif	// SSL_CTX_set_ecdh_auto

	return ctx;
}
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
typedef  int /*<<< orphan*/  vrfy_buf ;
struct TYPE_2__ {int fd; } ;
struct ssl_state {TYPE_1__ net_ctx; int /*<<< orphan*/  ctx; int /*<<< orphan*/  domain; int /*<<< orphan*/  conf; int /*<<< orphan*/  ctr_drbg; int /*<<< orphan*/  ca; } ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_WANT_READ ; 
 int MBEDTLS_ERR_SSL_WANT_WRITE ; 
 int /*<<< orphan*/  MBEDTLS_SSL_IS_CLIENT ; 
 int /*<<< orphan*/  MBEDTLS_SSL_PRESET_DEFAULT ; 
 int /*<<< orphan*/  MBEDTLS_SSL_TRANSPORT_STREAM ; 
 int /*<<< orphan*/  MBEDTLS_SSL_VERIFY_OPTIONAL ; 
 int /*<<< orphan*/  mbedtls_ctr_drbg_random ; 
 int /*<<< orphan*/  mbedtls_net_recv ; 
 int /*<<< orphan*/  mbedtls_net_send ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 
 scalar_t__ FUNC11 (int,void*,int) ; 
 int /*<<< orphan*/  ssl_debug ; 
 int /*<<< orphan*/  stderr ; 

int FUNC12(void *state_data, void *data, bool timeout_enable, bool nonblock)
{
   struct ssl_state *state = (struct ssl_state*)state_data;
   int ret, flags;

   if (FUNC11(state->net_ctx.fd, data, timeout_enable))
      return -1;

   if (FUNC4(&state->conf,
               MBEDTLS_SSL_IS_CLIENT,
               MBEDTLS_SSL_TRANSPORT_STREAM,
               MBEDTLS_SSL_PRESET_DEFAULT) != 0)
      return -1;

   FUNC0(&state->conf, MBEDTLS_SSL_VERIFY_OPTIONAL);
   FUNC1(&state->conf, &state->ca, NULL);
   FUNC3(&state->conf, mbedtls_ctr_drbg_random, &state->ctr_drbg);
   FUNC2(&state->conf, ssl_debug, stderr);

   if (FUNC9(&state->ctx, &state->conf) != 0)
      return -1;

#if defined(MBEDTLS_X509_CRT_PARSE_C)
   if (mbedtls_ssl_set_hostname(&state->ctx, state->domain) != 0)
      return -1;
#endif

   FUNC7(&state->ctx, &state->net_ctx, mbedtls_net_send, mbedtls_net_recv, NULL);

   while ((ret = FUNC6(&state->ctx)) != 0)
   {
      if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE)
         return -1;
   }

   if ((flags = FUNC5(&state->ctx)) != 0)
   {
      char vrfy_buf[512];
      FUNC10(vrfy_buf, sizeof(vrfy_buf), "  ! ", flags);
   }

   return state->net_ctx.fd;
}
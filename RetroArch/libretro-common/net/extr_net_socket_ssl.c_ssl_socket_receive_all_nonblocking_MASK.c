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
typedef  int /*<<< orphan*/  uint8_t ;
struct ssl_state {int /*<<< orphan*/  ctx; int /*<<< orphan*/  net_ctx; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ MBEDTLS_ERR_SSL_WANT_READ ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 

ssize_t FUNC3(void *state_data, bool *error, void *data_, size_t size)
{
   struct ssl_state *state = (struct ssl_state*)state_data;
   const uint8_t *data = (const uint8_t*)data_;
   /* mbedtls_ssl_read wants non-const data but it only reads it, so this cast is safe */
   ssize_t         ret;

   FUNC1(&state->net_ctx);

   ret = FUNC2(&state->ctx, (unsigned char*)data, size);

   if (ret > 0)
      return ret;

   if (ret == 0)
   {
      /* Socket closed */
      *error = true;
      return -1;
   }

   if (FUNC0((int)ret) || ret == MBEDTLS_ERR_SSL_WANT_READ)
      return 0;

   *error = true;
   return -1;
}
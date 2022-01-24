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
struct TYPE_2__ {scalar_t__ fd; int /*<<< orphan*/ * ssl_ctx; scalar_t__ ssl; } ;
struct http_t {TYPE_1__ sock_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct http_t*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct http_t *state)
{
   if (!state)
      return;

   if (state->sock_state.fd >= 0)
   {
      FUNC1(state->sock_state.fd);
#ifdef HAVE_SSL
      if (state->sock_state.ssl && state->sock_state.ssl_ctx)
      {
         ssl_socket_free(state->sock_state.ssl_ctx);
         state->sock_state.ssl_ctx = NULL;
      }
#endif
   }
   FUNC0(state);
}
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
struct http_socket_state_t {int /*<<< orphan*/  fd; int /*<<< orphan*/  ssl_ctx; scalar_t__ ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,size_t,int) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(
      struct http_socket_state_t *sock_state, bool *error, const char *text)
{
   size_t text_size;
   if (*error)
      return;
   text_size = FUNC2(text);
#ifdef HAVE_SSL
   if (sock_state->ssl)
   {
      if (!ssl_socket_send_all_blocking(
               sock_state->ssl_ctx, text, text_size, true))
         *error = true;
   }
   else
#endif
   {
      if (!FUNC0(
               sock_state->fd, text, text_size, true))
         *error = true;
   }
}
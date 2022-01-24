#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_3__ {int /*<<< orphan*/  status; scalar_t__ socket; } ;
typedef  TYPE_1__ VC_CONTAINER_NET_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int INFINITE_TIMEOUT_MS ; 
 int SOCKET_ERROR ; 
 int /*<<< orphan*/  VC_CONTAINER_NET_SUCCESS ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static bool FUNC4( VC_CONTAINER_NET_T *p_ctx, uint32_t timeout_ms )
{
   int result;
   fd_set set;
   struct timeval tv;

   if (timeout_ms == INFINITE_TIMEOUT_MS)
      return true;

   FUNC1(&set);
   FUNC0(p_ctx->socket, &set);
   tv.tv_sec = timeout_ms / 1000;
   tv.tv_usec = (timeout_ms - tv.tv_sec * 1000) * 1000;
   result = FUNC2(p_ctx->socket + 1, &set, NULL, NULL, &tv);

   if (result == SOCKET_ERROR)
      p_ctx->status = FUNC3();
   else
      p_ctx->status = VC_CONTAINER_NET_SUCCESS;

   return (result == 1);
}
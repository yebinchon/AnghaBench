#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vc_container_net_status_t ;
struct TYPE_9__ {int /*<<< orphan*/  sa; } ;
struct TYPE_8__ {scalar_t__ type; scalar_t__ status; scalar_t__ socket; int /*<<< orphan*/  read_timeout_ms; int /*<<< orphan*/  max_datagram_size; int /*<<< orphan*/  to_addr_len; TYPE_5__ to_addr; } ;
typedef  TYPE_1__ VC_CONTAINER_NET_T ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE_TIMEOUT_MS ; 
 scalar_t__ INVALID_SOCKET ; 
 scalar_t__ STREAM_CLIENT ; 
 scalar_t__ STREAM_SERVER ; 
 scalar_t__ VC_CONTAINER_NET_ERROR_INVALID_PARAMETER ; 
 scalar_t__ VC_CONTAINER_NET_ERROR_INVALID_SOCKET ; 
 scalar_t__ VC_CONTAINER_NET_ERROR_NOT_ALLOWED ; 
 scalar_t__ VC_CONTAINER_NET_ERROR_NO_MEMORY ; 
 scalar_t__ VC_CONTAINER_NET_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

vc_container_net_status_t FUNC8( VC_CONTAINER_NET_T *p_server_ctx, VC_CONTAINER_NET_T **pp_client_ctx )
{
   VC_CONTAINER_NET_T *p_client_ctx = NULL;

   if (!p_server_ctx)
      return VC_CONTAINER_NET_ERROR_INVALID_SOCKET;

   if (!pp_client_ctx)
      return VC_CONTAINER_NET_ERROR_INVALID_PARAMETER;

   *pp_client_ctx = NULL;

   if (p_server_ctx->type != STREAM_SERVER)
   {
      p_server_ctx->status = VC_CONTAINER_NET_ERROR_NOT_ALLOWED;
      goto error;
   }

   p_client_ctx = (VC_CONTAINER_NET_T *)FUNC2(sizeof(VC_CONTAINER_NET_T));
   if (!p_client_ctx)
   {
      p_server_ctx->status = VC_CONTAINER_NET_ERROR_NO_MEMORY;
      goto error;
   }

   /* Initialise the new context with the address information from the server context */
   FUNC4(p_client_ctx, 0, sizeof(*p_client_ctx));
   FUNC3(&p_client_ctx->to_addr, &p_server_ctx->to_addr, p_server_ctx->to_addr_len);
   p_client_ctx->to_addr_len = p_server_ctx->to_addr_len;

   p_client_ctx->socket = FUNC0(p_server_ctx->socket, &p_client_ctx->to_addr.sa, &p_client_ctx->to_addr_len);

   if (p_client_ctx->socket == INVALID_SOCKET)
   {
      p_server_ctx->status = FUNC6();
      goto error;
   }

   /* Need to bump up the initialisation count, as a new context has been created */
   p_server_ctx->status = FUNC5();
   if (p_server_ctx->status != VC_CONTAINER_NET_SUCCESS)
      goto error;

   p_client_ctx->type = STREAM_CLIENT;
   p_client_ctx->max_datagram_size = FUNC7(p_client_ctx->socket);
   p_client_ctx->read_timeout_ms = INFINITE_TIMEOUT_MS;
   p_client_ctx->status = VC_CONTAINER_NET_SUCCESS;

   *pp_client_ctx = p_client_ctx;
   return VC_CONTAINER_NET_SUCCESS;

error:
   if (p_client_ctx)
      FUNC1(p_client_ctx);
   return p_server_ctx->status;
}
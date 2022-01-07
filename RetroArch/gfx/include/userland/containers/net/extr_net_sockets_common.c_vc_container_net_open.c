
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vc_container_net_status_t ;
typedef int vc_container_net_open_flags_t ;
struct addrinfo {int type; int read_timeout_ms; int max_datagram_size; scalar_t__ socket; int ai_addrlen; int ai_addr; int to_addr; int to_addr_len; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int hints ;
typedef struct addrinfo VC_CONTAINER_NET_T ;
typedef scalar_t__ SOCKET_T ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;


 int INFINITE_TIMEOUT_MS ;
 scalar_t__ INVALID_SOCKET ;
 int LOG_ERROR (int *,char*,...) ;
 int SOCKET_ERROR ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;


 scalar_t__ VC_CONTAINER_NET_ERROR_INVALID_PARAMETER ;
 scalar_t__ VC_CONTAINER_NET_ERROR_NO_MEMORY ;


 int VC_CONTAINER_NET_OPEN_FLAG_FORCE_MASK ;
 int VC_CONTAINER_NET_OPEN_FLAG_STREAM ;
 scalar_t__ VC_CONTAINER_NET_SUCCESS ;
 int bind (scalar_t__,int ,int ) ;
 int connect (scalar_t__,int ,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,int ,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 scalar_t__ socket (int ,int ,int ) ;
 int socket_clear_address (int ) ;
 int vc_container_net_close (struct addrinfo*) ;
 int vc_container_net_private_close (scalar_t__) ;
 int vc_container_net_private_deinit () ;
 scalar_t__ vc_container_net_private_init () ;
 scalar_t__ vc_container_net_private_last_error () ;
 int vc_container_net_private_maximum_datagram_size (scalar_t__) ;
 int vc_container_net_private_set_reusable (scalar_t__,int) ;

VC_CONTAINER_NET_T *vc_container_net_open( const char *address, const char *port,
      vc_container_net_open_flags_t flags, vc_container_net_status_t *p_status )
{
   VC_CONTAINER_NET_T *p_ctx;
   struct addrinfo hints, *info, *p;
   int result;
   vc_container_net_status_t status;
   SOCKET_T sock = INVALID_SOCKET;

   status = vc_container_net_private_init();
   if (status != VC_CONTAINER_NET_SUCCESS)
   {
      LOG_ERROR(((void*)0), "vc_container_net_open: platform initialization failure: %d", status);
      if (p_status)
         *p_status = status;
      return ((void*)0);
   }

   p_ctx = (VC_CONTAINER_NET_T *)malloc(sizeof(VC_CONTAINER_NET_T));
   if (!p_ctx)
   {
      if (p_status)
         *p_status = VC_CONTAINER_NET_ERROR_NO_MEMORY;

      LOG_ERROR(((void*)0), "vc_container_net_open: malloc fail for VC_CONTAINER_NET_T");
      vc_container_net_private_deinit();
      return ((void*)0);
   }


   memset(p_ctx, 0, sizeof(*p_ctx));
   p_ctx->socket = INVALID_SOCKET;
   if (flags & VC_CONTAINER_NET_OPEN_FLAG_STREAM)
      p_ctx->type = address ? 131 : 130;
   else
      p_ctx->type = address ? 132 : 133;


   memset(&hints, 0, sizeof(hints));
   switch (flags & VC_CONTAINER_NET_OPEN_FLAG_FORCE_MASK)
   {
   case 0:
      hints.ai_family = AF_UNSPEC;
      break;
   case 129:
      hints.ai_family = AF_INET;
      break;
   case 128:
      hints.ai_family = AF_INET6;
      break;
   default:
      status = VC_CONTAINER_NET_ERROR_INVALID_PARAMETER;
      LOG_ERROR(((void*)0), "vc_container_net_open: invalid address forcing flag");
      goto error;
   }
   hints.ai_socktype = (flags & VC_CONTAINER_NET_OPEN_FLAG_STREAM) ? SOCK_STREAM : SOCK_DGRAM;

   result = getaddrinfo(address, port, &hints, &info);
   if (result)
   {
      status = vc_container_net_private_last_error();
      LOG_ERROR(((void*)0), "vc_container_net_open: unable to get address info: %d", status);
      goto error;
   }



   for(p = info; (p != ((void*)0)) && (sock == INVALID_SOCKET) ; p = p->ai_next)
   {
      sock = socket(p->ai_family, p->ai_socktype, p->ai_protocol);
      if (sock == INVALID_SOCKET)
      {
         status = vc_container_net_private_last_error();
         continue;
      }

      switch (p_ctx->type)
      {
      case 131:

            if (connect(sock, p->ai_addr, p->ai_addrlen) == SOCKET_ERROR)
               status = vc_container_net_private_last_error();
            break;

      case 132:

            break;

      case 130:

            vc_container_net_private_set_reusable(sock, 1);


            socket_clear_address(p->ai_addr);

            if (bind(sock, p->ai_addr, p->ai_addrlen) == SOCKET_ERROR)
               status = vc_container_net_private_last_error();
            break;

      case 133:

            socket_clear_address(p->ai_addr);

            if (bind(sock, p->ai_addr, p->ai_addrlen) == SOCKET_ERROR)
               status = vc_container_net_private_last_error();
            break;
      }

      if (status == VC_CONTAINER_NET_SUCCESS)
      {

         p_ctx->to_addr_len = p->ai_addrlen;
         memcpy(&p_ctx->to_addr, p->ai_addr, p->ai_addrlen);
      } else {
         vc_container_net_private_close(sock);
         sock = INVALID_SOCKET;
      }
   }

   freeaddrinfo(info);

   if (sock == INVALID_SOCKET)
   {
      LOG_ERROR(((void*)0), "vc_container_net_open: failed to open socket: %d", status);
      goto error;
   }

   p_ctx->socket = sock;
   p_ctx->max_datagram_size = vc_container_net_private_maximum_datagram_size(sock);
   p_ctx->read_timeout_ms = INFINITE_TIMEOUT_MS;

   if (p_status)
      *p_status = VC_CONTAINER_NET_SUCCESS;

   return p_ctx;

error:
   if (p_status)
      *p_status = status;
   (void)vc_container_net_close(p_ctx);
   return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vrfy_buf ;
struct TYPE_2__ {int fd; } ;
struct ssl_state {TYPE_1__ net_ctx; int ctx; int domain; int conf; int ctr_drbg; int ca; } ;


 int MBEDTLS_ERR_SSL_WANT_READ ;
 int MBEDTLS_ERR_SSL_WANT_WRITE ;
 int MBEDTLS_SSL_IS_CLIENT ;
 int MBEDTLS_SSL_PRESET_DEFAULT ;
 int MBEDTLS_SSL_TRANSPORT_STREAM ;
 int MBEDTLS_SSL_VERIFY_OPTIONAL ;
 int mbedtls_ctr_drbg_random ;
 int mbedtls_net_recv ;
 int mbedtls_net_send ;
 int mbedtls_ssl_conf_authmode (int *,int ) ;
 int mbedtls_ssl_conf_ca_chain (int *,int *,int *) ;
 int mbedtls_ssl_conf_dbg (int *,int ,int ) ;
 int mbedtls_ssl_conf_rng (int *,int ,int *) ;
 scalar_t__ mbedtls_ssl_config_defaults (int *,int ,int ,int ) ;
 int mbedtls_ssl_get_verify_result (int *) ;
 int mbedtls_ssl_handshake (int *) ;
 int mbedtls_ssl_set_bio (int *,TYPE_1__*,int ,int ,int *) ;
 scalar_t__ mbedtls_ssl_set_hostname (int *,int ) ;
 scalar_t__ mbedtls_ssl_setup (int *,int *) ;
 int mbedtls_x509_crt_verify_info (char*,int,char*,int) ;
 scalar_t__ socket_connect (int,void*,int) ;
 int ssl_debug ;
 int stderr ;

int ssl_socket_connect(void *state_data, void *data, bool timeout_enable, bool nonblock)
{
   struct ssl_state *state = (struct ssl_state*)state_data;
   int ret, flags;

   if (socket_connect(state->net_ctx.fd, data, timeout_enable))
      return -1;

   if (mbedtls_ssl_config_defaults(&state->conf,
               MBEDTLS_SSL_IS_CLIENT,
               MBEDTLS_SSL_TRANSPORT_STREAM,
               MBEDTLS_SSL_PRESET_DEFAULT) != 0)
      return -1;

   mbedtls_ssl_conf_authmode(&state->conf, MBEDTLS_SSL_VERIFY_OPTIONAL);
   mbedtls_ssl_conf_ca_chain(&state->conf, &state->ca, ((void*)0));
   mbedtls_ssl_conf_rng(&state->conf, mbedtls_ctr_drbg_random, &state->ctr_drbg);
   mbedtls_ssl_conf_dbg(&state->conf, ssl_debug, stderr);

   if (mbedtls_ssl_setup(&state->ctx, &state->conf) != 0)
      return -1;






   mbedtls_ssl_set_bio(&state->ctx, &state->net_ctx, mbedtls_net_send, mbedtls_net_recv, ((void*)0));

   while ((ret = mbedtls_ssl_handshake(&state->ctx)) != 0)
   {
      if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE)
         return -1;
   }

   if ((flags = mbedtls_ssl_get_verify_result(&state->ctx)) != 0)
   {
      char vrfy_buf[512];
      mbedtls_x509_crt_verify_info(vrfy_buf, sizeof(vrfy_buf), "  ! ", flags);
   }

   return state->net_ctx.fd;
}

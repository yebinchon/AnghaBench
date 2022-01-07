
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssl_state {int ca; int entropy; int ctr_drbg; int conf; int ctx; } ;


 int free (struct ssl_state*) ;
 int mbedtls_ctr_drbg_free (int *) ;
 int mbedtls_entropy_free (int *) ;
 int mbedtls_ssl_config_free (int *) ;
 int mbedtls_ssl_free (int *) ;
 int mbedtls_x509_crt_free (int *) ;

void ssl_socket_free(void *state_data)
{
   struct ssl_state *state = (struct ssl_state*)state_data;

   if (!state)
      return;

   mbedtls_ssl_free(&state->ctx);
   mbedtls_ssl_config_free(&state->conf);
   mbedtls_ctr_drbg_free(&state->ctr_drbg);
   mbedtls_entropy_free(&state->entropy);




   free(state);
}

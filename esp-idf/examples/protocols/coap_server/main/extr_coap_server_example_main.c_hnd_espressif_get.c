
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int coap_string_t ;
typedef int coap_session_t ;
typedef int coap_resource_t ;
typedef int coap_pdu_t ;
typedef int coap_context_t ;
typedef int coap_binary_t ;


 int COAP_MEDIATYPE_TEXT_PLAIN ;
 int coap_add_data_blocked_response (int *,int *,int *,int *,int *,int ,int ,size_t,int const*) ;
 scalar_t__ espressif_data ;
 scalar_t__ espressif_data_len ;

__attribute__((used)) static void
hnd_espressif_get(coap_context_t *ctx, coap_resource_t *resource,
                  coap_session_t *session,
                  coap_pdu_t *request, coap_binary_t *token,
                  coap_string_t *query, coap_pdu_t *response)
{
    coap_add_data_blocked_response(resource, session, request, response, token,
                                   COAP_MEDIATYPE_TEXT_PLAIN, 0,
                                   (size_t)espressif_data_len,
                                   (const u_char *)espressif_data);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_client {int session_ticket_included; int client_hello_ext_len; int * client_hello_ext; } ;


 int MSG_DEBUG ;
 int TLS_EXT_PAC_OPAQUE ;
 int WPA_PUT_BE16 (int *,size_t) ;
 int os_free (int *) ;
 int * os_malloc (int) ;
 int os_memcpy (int *,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

int tlsv1_client_hello_ext(struct tlsv1_client *conn, int ext_type,
      const u8 *data, size_t data_len)
{
 u8 *pos;

 conn->session_ticket_included = 0;
 os_free(conn->client_hello_ext);
 conn->client_hello_ext = ((void*)0);
 conn->client_hello_ext_len = 0;

 if (data == ((void*)0) || data_len == 0)
  return 0;

 pos = conn->client_hello_ext = os_malloc(6 + data_len);
 if (pos == ((void*)0))
  return -1;

 WPA_PUT_BE16(pos, 4 + data_len);
 pos += 2;
 WPA_PUT_BE16(pos, ext_type);
 pos += 2;
 WPA_PUT_BE16(pos, data_len);
 pos += 2;
 os_memcpy(pos, data, data_len);
 conn->client_hello_ext_len = 6 + data_len;

 if (ext_type == TLS_EXT_PAC_OPAQUE) {
  conn->session_ticket_included = 1;
  wpa_printf(MSG_DEBUG, "TLSv1: Using session ticket");
 }

 return 0;
}

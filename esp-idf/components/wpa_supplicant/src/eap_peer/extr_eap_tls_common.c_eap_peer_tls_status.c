
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_ssl_data {int conn; int ssl_ctx; } ;
struct eap_sm {int dummy; } ;
typedef int name ;


 int os_snprintf (char*,size_t,char*,char*) ;
 scalar_t__ tls_get_cipher (int ,int ,char*,int) ;

int eap_peer_tls_status(struct eap_sm *sm, struct eap_ssl_data *data,
   char *buf, size_t buflen, int verbose)
{
 char name[128];
 int len = 0, ret;

 if (tls_get_cipher(data->ssl_ctx, data->conn, name, sizeof(name)) == 0)
 {
  ret = os_snprintf(buf + len, buflen - len,
      "EAP TLS cipher=%s\n", name);
  if (ret < 0 || (size_t) ret >= buflen - len)
   return len;
  len += ret;
 }

 return len;
}

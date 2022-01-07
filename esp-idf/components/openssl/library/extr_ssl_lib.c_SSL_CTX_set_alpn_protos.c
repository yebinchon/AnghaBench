
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* alpn_string; char** alpn_list; int alpn_status; } ;
struct TYPE_5__ {TYPE_1__ ssl_alpn; } ;
typedef TYPE_2__ SSL_CTX ;


 int ALPN_ENABLE ;
 int ALPN_LIST_MAX ;
 int memcpy (char*,unsigned char const*,unsigned int) ;
 char* ssl_mem_zalloc (unsigned int) ;

int SSL_CTX_set_alpn_protos(SSL_CTX *ctx, const unsigned char *protos, unsigned protos_len)
{
     ctx->ssl_alpn.alpn_string = ssl_mem_zalloc(protos_len + 1);
     if (! ctx->ssl_alpn.alpn_string) {
   return 1;
     }
     ctx->ssl_alpn.alpn_status = ALPN_ENABLE;
     memcpy(ctx->ssl_alpn.alpn_string, protos, protos_len);

     char *ptr = ctx->ssl_alpn.alpn_string;
     int i;

     for (i = 0; i < ALPN_LIST_MAX - 1; i++) {
   char len = *ptr;
   *ptr = '\0';
   ptr++;
   protos_len--;
   ctx->ssl_alpn.alpn_list[i] = ptr;
   ptr += len;
   protos_len -= len;
   if (! protos_len) {
        i++;
        break;
   }
     }
     ctx->ssl_alpn.alpn_list[i] = ((void*)0);
     return 0;
}

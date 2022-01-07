
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ssl_ctx; int ssl; int RawOut; int RawIn; int SslInOut; } ;
typedef TYPE_1__ SSL_PIPE ;


 int Free (TYPE_1__*) ;
 int FreeSslBio (int ) ;
 int SSL_CTX_free (int ) ;
 int SSL_free (int ) ;

void FreeSslPipe(SSL_PIPE *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 FreeSslBio(s->SslInOut);
 FreeSslBio(s->RawIn);
 FreeSslBio(s->RawOut);

 SSL_free(s->ssl);
 SSL_CTX_free(s->ssl_ctx);

 Free(s);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct SslClientCertInfo {char* PreverifyErrMessage; TYPE_1__* X; int PreverifyErr; } ;
typedef int X509_STORE_CTX ;
typedef int X509 ;
struct TYPE_6__ {int do_not_free; } ;
typedef TYPE_1__ X ;
typedef int SSL ;


 TYPE_1__* CloneX (TYPE_1__*) ;
 int Debug (char*,char const*) ;
 int FreeX (TYPE_1__*) ;
 int GetSslClientCertIndex () ;
 int PREVERIFY_ERR_MESSAGE_SIZE ;
 struct SslClientCertInfo* SSL_get_ex_data (int *,int ) ;
 int SSL_get_ex_data_X509_STORE_CTX_idx () ;
 int StrCpy (char*,int ,char*) ;
 TYPE_1__* X509ToX (int *) ;
 int * X509_STORE_CTX_get0_cert (int *) ;
 int X509_STORE_CTX_get_error (int *) ;
 int * X509_STORE_CTX_get_ex_data (int *,int ) ;
 char* X509_verify_cert_error_string (int ) ;

int SslCertVerifyCallback(int preverify_ok, X509_STORE_CTX *ctx)
{
 SSL *ssl;
 struct SslClientCertInfo *clientcert;
 X509 *cert;

 ssl = X509_STORE_CTX_get_ex_data(ctx, SSL_get_ex_data_X509_STORE_CTX_idx());
 clientcert = SSL_get_ex_data(ssl, GetSslClientCertIndex());

 if (clientcert != ((void*)0))
 {
  clientcert->PreverifyErr = X509_STORE_CTX_get_error(ctx);
  clientcert->PreverifyErrMessage[0] = '\0';
  if (!preverify_ok)
  {
   const char *msg = X509_verify_cert_error_string(clientcert->PreverifyErr);
   StrCpy(clientcert->PreverifyErrMessage, PREVERIFY_ERR_MESSAGE_SIZE, (char *)msg);
   Debug("SslCertVerifyCallback preverify error: '%s'\n", msg);
  }
  else
  {
   cert = X509_STORE_CTX_get0_cert(ctx);
   if (cert != ((void*)0))
   {
    X *tmpX = X509ToX(cert);
    X *copyX = CloneX(tmpX);
    tmpX->do_not_free = 1;
    FreeX(tmpX);
    clientcert->X = copyX;
   }
  }
 }

 return 1;
}

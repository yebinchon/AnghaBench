
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
typedef int now ;
typedef int UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_5__ {int Size; int Buf; } ;
typedef int IO ;
typedef TYPE_1__ BUF ;


 int ERR_load_crypto_strings () ;
 int FileClose (int *) ;
 int * FileOpen (char*,int) ;
 int FreeBuf (TYPE_1__*) ;
 TYPE_1__* NewBuf () ;
 int NewLock () ;
 int OpenSSL_InitLock () ;
 int OpenSSL_add_all_ciphers () ;
 int OpenSSL_add_all_digests () ;
 int RAND_poll () ;
 int RAND_seed (int ,int ) ;
 int Rand (char*,int) ;
 int SSL_get_ex_new_index (int ,char*,int *,int *,int *) ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int SystemTime64 () ;
 int WriteBuf (TYPE_1__*,int*,int) ;
 int openssl_inited ;
 int openssl_lock ;
 int rand () ;
 int ssl_clientcert_index ;

void InitCryptLibrary()
{
 char tmp[16];



 openssl_lock = NewLock();
 SSL_library_init();

 OpenSSL_add_all_ciphers();
 OpenSSL_add_all_digests();
 ERR_load_crypto_strings();
 SSL_load_error_strings();


 ssl_clientcert_index = SSL_get_ex_new_index(0, "struct SslClientCertInfo *", ((void*)0), ((void*)0), ((void*)0));
 RAND_poll();




 Rand(tmp, sizeof(tmp));
 OpenSSL_InitLock();

 openssl_inited = 1;
}

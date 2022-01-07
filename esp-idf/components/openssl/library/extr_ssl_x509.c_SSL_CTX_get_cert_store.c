
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE ;
typedef int SSL_CTX ;



X509_STORE *SSL_CTX_get_cert_store(const SSL_CTX *ctx) {
    return (X509_STORE *)ctx;
}

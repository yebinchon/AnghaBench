
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_credentials {int cert; } ;


 int tlsv1_set_cert_chain (int *,char const*,int const*,size_t) ;

int tlsv1_set_cert(struct tlsv1_credentials *cred, const char *cert,
     const u8 *cert_blob, size_t cert_blob_len)
{
 return tlsv1_set_cert_chain(&cred->cert, cert,
        cert_blob, cert_blob_len);
}

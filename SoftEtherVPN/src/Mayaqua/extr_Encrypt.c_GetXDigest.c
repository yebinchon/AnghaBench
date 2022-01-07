
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x509; } ;
typedef TYPE_1__ X ;
typedef int UINT ;
typedef int UCHAR ;


 int EVP_md5 () ;
 int EVP_sha1 () ;
 int MD5_SIZE ;
 int SHA1_SIZE ;
 int X509_digest (int ,int ,int *,unsigned int*) ;

void GetXDigest(X *x, UCHAR *buf, bool sha1)
{

 if (x == ((void*)0))
 {
  return;
 }

 if (sha1 == 0)
 {
  UINT size = MD5_SIZE;
  X509_digest(x->x509, EVP_md5(), buf, (unsigned int *)&size);
 }
 else
 {
  UINT size = SHA1_SIZE;
  X509_digest(x->x509, EVP_sha1(), buf, (unsigned int *)&size);
 }
}

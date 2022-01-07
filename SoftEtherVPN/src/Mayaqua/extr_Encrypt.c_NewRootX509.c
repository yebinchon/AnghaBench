
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int size; char* data; } ;
typedef TYPE_1__ X_SERIAL ;
typedef int X509_NAME ;
typedef int X509_EXTENSION ;
typedef int X509 ;
typedef int UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_10__ {int length; void* data; } ;
struct TYPE_9__ {int private_key; int pkey; } ;
typedef int NAME ;
typedef TYPE_2__ K ;
typedef int ASN1_TIME ;
typedef TYPE_3__ ASN1_INTEGER ;


 int Copy (void*,char*,int) ;
 int EVP_sha256 () ;
 int FreeX509 (int *) ;
 int FreeX509Name (int *) ;
 int Lock (int ) ;
 int NID_basic_constraints ;
 int * NameToX509Name (int *) ;
 int * NewBasicKeyUsageForX509 () ;
 int * NewExtendedKeyUsageForX509 () ;
 int OPENSSL_free (void*) ;
 void* OPENSSL_malloc (int) ;
 int SystemTime64 () ;
 int UINT64ToAsn1Time (void*,int) ;
 int Unlock (int ) ;
 int * X509V3_EXT_conf_nid (int *,int *,int ,char*) ;
 int X509_EXTENSION_free (int *) ;
 int X509_add_ext (int *,int *,int) ;
 int * X509_get0_notAfter (int *) ;
 int * X509_get0_notBefore (int *) ;
 TYPE_3__* X509_get_serialNumber (int *) ;
 int * X509_new () ;
 int X509_set_issuer_name (int *,int *) ;
 int X509_set_pubkey (int *,int ) ;
 int X509_set_subject_name (int *,int *) ;
 int X509_set_version (int *,long) ;
 int X509_sign (int *,int ,int ) ;
 int openssl_lock ;

X509 *NewRootX509(K *pub, K *priv, NAME *name, UINT days, X_SERIAL *serial)
{
 X509 *x509;
 UINT64 notBefore, notAfter;
 const ASN1_TIME *t1, *t2;
 X509_NAME *subject_name, *issuer_name;
 X509_EXTENSION *ex = ((void*)0);
 X509_EXTENSION *eku = ((void*)0);
 X509_EXTENSION *busage = ((void*)0);
 ASN1_INTEGER *s;

 if (pub == ((void*)0) || name == ((void*)0) || priv == ((void*)0))
 {
  return ((void*)0);
 }
 if (days == 0)
 {
  days = 365;
 }
 if (priv->private_key == 0)
 {
  return ((void*)0);
 }
 if (pub->private_key != 0)
 {
  return ((void*)0);
 }

 notBefore = SystemTime64();
 notAfter = notBefore + (UINT64)days * (UINT64)3600 * (UINT64)24 * (UINT64)1000;


 x509 = X509_new();
 if (x509 == ((void*)0))
 {
  return ((void*)0);
 }


 X509_set_version(x509, 2L);


 t1 = X509_get0_notBefore(x509);
 t2 = X509_get0_notAfter(x509);
 if (!UINT64ToAsn1Time((void *)t1, notBefore))
 {
  FreeX509(x509);
  return ((void*)0);
 }
 if (!UINT64ToAsn1Time((void *)t2, notAfter))
 {
  FreeX509(x509);
  return ((void*)0);
 }


 subject_name = NameToX509Name(name);
 if (subject_name == ((void*)0))
 {
  FreeX509(x509);
  return ((void*)0);
 }
 issuer_name = NameToX509Name(name);
 if (issuer_name == ((void*)0))
 {
  FreeX509Name(subject_name);
  FreeX509(x509);
  return ((void*)0);
 }

 X509_set_issuer_name(x509, issuer_name);
 X509_set_subject_name(x509, subject_name);

 FreeX509Name(subject_name);
 FreeX509Name(issuer_name);


 s = X509_get_serialNumber(x509);
 OPENSSL_free(s->data);
 if (serial == ((void*)0))
 {
  char zero = 0;
  s->data = OPENSSL_malloc(sizeof(char));
  Copy(s->data, &zero, sizeof(char));
  s->length = sizeof(char);
 }
 else
 {
  s->data = OPENSSL_malloc(serial->size);
  Copy(s->data, serial->data, serial->size);
  s->length = serial->size;
 }


 ex = X509V3_EXT_conf_nid(((void*)0), ((void*)0), NID_basic_constraints, "critical,CA:TRUE");
 X509_add_ext(x509, ex, -1);
 X509_EXTENSION_free(ex);


 busage = NewBasicKeyUsageForX509();
 if (busage != ((void*)0))
 {
  X509_add_ext(x509, busage, -1);
  X509_EXTENSION_free(busage);
 }


 eku = NewExtendedKeyUsageForX509();
 if (eku != ((void*)0))
 {
  X509_add_ext(x509, eku, -1);
  X509_EXTENSION_free(eku);
 }

 Lock(openssl_lock);
 {

  X509_set_pubkey(x509, pub->pkey);



  X509_sign(x509, priv->pkey, EVP_sha256());
 }
 Unlock(openssl_lock);

 return x509;
}

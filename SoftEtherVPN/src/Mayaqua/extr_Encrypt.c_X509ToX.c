
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_25__ {int root_cert; int has_basic_constraints; int bits; int is_compatible_bit; int * serial; int issuer_url; int subject_name; int issuer_name; int * x509; } ;
typedef TYPE_3__ X ;
typedef scalar_t__ UINT ;
struct TYPE_29__ {TYPE_2__* location; int method; } ;
struct TYPE_28__ {char* data; int length; } ;
struct TYPE_27__ {scalar_t__ Size; } ;
struct TYPE_26__ {int pkey; } ;
struct TYPE_23__ {int uniformResourceIdentifier; } ;
struct TYPE_24__ {scalar_t__ type; TYPE_1__ d; } ;
typedef TYPE_4__ K ;
typedef TYPE_5__ BUF ;
typedef int AUTHORITY_INFO_ACCESS ;
typedef TYPE_6__ ASN1_INTEGER ;
typedef TYPE_7__ ACCESS_DESCRIPTION ;


 scalar_t__ ASN1_STRING_data (int ) ;
 scalar_t__ ASN1_STRING_get0_data (int ) ;
 int AUTHORITY_INFO_ACCESS_free (int *) ;
 scalar_t__ CheckXandK (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ CompareName (int ,int ) ;
 scalar_t__ EVP_PKEY_RSA ;
 scalar_t__ EVP_PKEY_base_id (int ) ;
 int EVP_PKEY_bits (int ) ;
 int FreeBuf (TYPE_5__*) ;
 int FreeK (TYPE_4__*) ;
 int FreeX (TYPE_3__*) ;
 scalar_t__ GEN_URI ;
 TYPE_4__* GetKFromX (TYPE_3__*) ;
 int IsEmptyStr (char*) ;
 TYPE_5__* KToBuf (TYPE_4__*,int,int *) ;
 int LoadXDates (TYPE_3__*) ;
 int LoadXNames (TYPE_3__*) ;
 scalar_t__ NID_ad_ca_issuers ;
 int NID_basic_constraints ;
 int NID_info_access ;
 void* NewXSerial (char*,int) ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int StrCpy (int ,int,char*) ;
 int X509_get_ext_by_NID (int *,int ,int) ;
 scalar_t__ X509_get_ext_d2i (int *,int ,int *,int *) ;
 TYPE_6__* X509_get_serialNumber (int *) ;
 TYPE_3__* ZeroMalloc (int) ;
 int sk_ACCESS_DESCRIPTION_num (int *) ;
 TYPE_7__* sk_ACCESS_DESCRIPTION_value (int *,int) ;

X *X509ToX(X509 *x509)
{
 X *x;
 K *k;
 BUF *b;
 UINT size;
 UINT type;
 ASN1_INTEGER *s;

 if (x509 == ((void*)0))
 {
  return ((void*)0);
 }

 x = ZeroMalloc(sizeof(X));
 x->x509 = x509;


 LoadXNames(x);


 LoadXDates(x);


 if (CompareName(x->issuer_name, x->subject_name))
 {
  K *pubkey = GetKFromX(x);
  if (pubkey != ((void*)0))
  {
   if (CheckXandK(x, pubkey))
   {
    x->root_cert = 1;
   }
   FreeK(pubkey);
  }
 }


 if (X509_get_ext_by_NID(x509, NID_basic_constraints, -1) != -1)
 {
  x->has_basic_constraints = 1;
 }


 if (x->root_cert == 0)
 {
  AUTHORITY_INFO_ACCESS *ads = (AUTHORITY_INFO_ACCESS *)X509_get_ext_d2i(x509, NID_info_access, ((void*)0), ((void*)0));

  if (ads != ((void*)0))
  {
   int i;

   for (i = 0; i < sk_ACCESS_DESCRIPTION_num(ads); i++)
   {
    ACCESS_DESCRIPTION *ad = sk_ACCESS_DESCRIPTION_value(ads, i);
    if (ad != ((void*)0))
    {
     if (OBJ_obj2nid(ad->method) == NID_ad_ca_issuers && ad->location->type == GEN_URI)
     {



      char *uri = (char *)ASN1_STRING_data(ad->location->d.uniformResourceIdentifier);

      if (IsEmptyStr(uri) == 0)
      {
       StrCpy(x->issuer_url, sizeof(x->issuer_url), uri);
       break;
      }
     }
    }
   }

   AUTHORITY_INFO_ACCESS_free(ads);
  }
 }


 s = X509_get_serialNumber(x509);
 x->serial = NewXSerial(s->data, s->length);
 if (x->serial == ((void*)0))
 {
  char zero = 0;
  x->serial = NewXSerial(&zero, sizeof(char));
 }

 k = GetKFromX(x);
 if (k == ((void*)0))
 {
  FreeX(x);
  return ((void*)0);
 }

 b = KToBuf(k, 0, ((void*)0));

 size = b->Size;
 type = EVP_PKEY_base_id(k->pkey);

 FreeBuf(b);


 x->bits = EVP_PKEY_bits(k->pkey);

 FreeK(k);

 if (type == EVP_PKEY_RSA)
 {
  x->is_compatible_bit = 1;

  if(x->bits != 1024 && x->bits != 1536 && x->bits != 2048 && x->bits != 3072 && x->bits != 4096)
  {
   x->is_compatible_bit = 0;
  }
  else
  {
   x->is_compatible_bit = 1;
  }
 }

 return x;
}

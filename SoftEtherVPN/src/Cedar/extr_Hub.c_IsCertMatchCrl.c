
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* subject_name; int * serial; } ;
typedef TYPE_1__ X ;
typedef int UCHAR ;
struct TYPE_9__ {TYPE_2__* Name; int DigestSHA1; int DigestMD5; int * Serial; } ;
struct TYPE_8__ {int * Local; int * State; int * Country; int * Unit; int * Organization; int * CommonName; } ;
typedef TYPE_2__ NAME ;
typedef TYPE_3__ CRL ;


 scalar_t__ Cmp (int *,int ,int) ;
 int CompareXSerial (int *,int *) ;
 int GetXDigest (TYPE_1__*,int *,int) ;
 int IsZero (int ,int) ;
 int MD5_SIZE ;
 int SHA1_SIZE ;
 int UniIsEmptyStr (int *) ;
 scalar_t__ UniSoftStrCmp (int *,int *) ;

bool IsCertMatchCrl(X *x, CRL *crl)
{
 bool b = 1;

 if (x == ((void*)0) || crl == ((void*)0))
 {
  return 0;
 }

 if (crl->Serial != ((void*)0))
 {

  if (x->serial == ((void*)0) || CompareXSerial(x->serial, crl->Serial) == 0)
  {

   b = 0;
  }
 }

 if (IsZero(crl->DigestMD5, sizeof(crl->DigestMD5)) == 0)
 {
  UCHAR test[MD5_SIZE];

  GetXDigest(x, test, 0);

  if (Cmp(test, crl->DigestMD5, MD5_SIZE) != 0)
  {
   b = 0;
  }
 }

 if (IsZero(crl->DigestSHA1, sizeof(crl->DigestSHA1)) == 0)
 {
  UCHAR test[SHA1_SIZE];

  GetXDigest(x, test, 1);

  if (Cmp(test, crl->DigestSHA1, SHA1_SIZE) != 0)
  {
   b = 0;
  }
 }

 if (crl->Name != ((void*)0))
 {

  NAME *xn, *cn;
  xn = x->subject_name;
  cn = crl->Name;

  if (cn->CommonName != ((void*)0) && (UniIsEmptyStr(cn->CommonName) == 0))
  {
   if (xn->CommonName == ((void*)0) || UniSoftStrCmp(xn->CommonName, cn->CommonName) != 0)
   {

    b = 0;
   }
  }

  if (cn->Organization != ((void*)0) && (UniIsEmptyStr(cn->Organization) == 0))
  {
   if (xn->Organization == ((void*)0) || UniSoftStrCmp(xn->Organization, cn->Organization) != 0)
   {

    b = 0;
   }
  }

  if (cn->Unit != ((void*)0) && (UniIsEmptyStr(cn->Unit) == 0))
  {
   if (xn->Unit == ((void*)0) || UniSoftStrCmp(xn->Unit, cn->Unit) != 0)
   {

    b = 0;
   }
  }

  if (cn->Country != ((void*)0) && (UniIsEmptyStr(cn->Country) == 0))
  {
   if (xn->Country == ((void*)0) || UniSoftStrCmp(xn->Country, cn->Country) != 0)
   {

    b = 0;
   }
  }

  if (cn->State != ((void*)0) && (UniIsEmptyStr(cn->State) == 0))
  {
   if (xn->State == ((void*)0) || UniSoftStrCmp(xn->State, cn->State) != 0)
   {

    b = 0;
   }
  }

  if (cn->Local != ((void*)0) && (UniIsEmptyStr(cn->Local) == 0))
  {
   if (xn->Local == ((void*)0) || UniSoftStrCmp(xn->Local, cn->Local) != 0)
   {

    b = 0;
   }
  }
 }

 return b;
}

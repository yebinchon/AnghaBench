
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int issuer_url; scalar_t__ root_cert; } ;
typedef TYPE_1__ X ;
typedef int LIST ;


 int Add (int *,int ) ;
 scalar_t__ CheckXEx (TYPE_1__*,TYPE_1__*,int,int) ;
 int CloneX (TYPE_1__*) ;
 int CompareX (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* DownloadCert (int ) ;
 scalar_t__ FIND_CERT_CHAIN_MAX_DEPTH ;
 TYPE_1__* FindCertIssuerFromCertList (int *,TYPE_1__*) ;
 int FreeX (TYPE_1__*) ;
 int IsEmptyStr (int ) ;
 scalar_t__ LIST_NUM (int *) ;

bool TryGetParentCertFromCertList(LIST *o, X *x, LIST *found_chain)
{
 bool ret = 0;
 X *r;
 bool do_free = 0;

 if (o == ((void*)0) || x == ((void*)0) || found_chain == ((void*)0))
 {
  return 0;
 }

 if (LIST_NUM(found_chain) >= FIND_CERT_CHAIN_MAX_DEPTH)
 {
  return 0;
 }

 Add(found_chain, CloneX(x));

 if (x->root_cert)
 {
  return 1;
 }

 r = FindCertIssuerFromCertList(o, x);

 if (r == ((void*)0))
 {
  if (IsEmptyStr(x->issuer_url) == 0)
  {
   r = DownloadCert(x->issuer_url);

   if (CheckXEx(x, r, 1, 1) && CompareX(x, r) == 0)
   {

    do_free = 1;
   }
   else
   {

    FreeX(r);
    r = ((void*)0);
   }
  }
 }

 if (r != ((void*)0))
 {
  ret = TryGetParentCertFromCertList(o, r, found_chain);
 }

 if (do_free)
 {
  FreeX(r);
 }

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ root_cert; } ;
typedef TYPE_1__ X ;
typedef int LIST ;


 int FreeCertList (int *) ;
 int * NewCertList (int) ;
 int TryGetRootCertChain (int *,TYPE_1__*,int,int *) ;

bool DownloadAndSaveIntermediateCertificatesIfNecessary(X *x)
{
 LIST *o;
 bool ret = 0;

 if (x == ((void*)0))
 {
  return 0;
 }

 if (x->root_cert)
 {
  return 1;
 }

 o = NewCertList(1);

 ret = TryGetRootCertChain(o, x, 1, ((void*)0));

 FreeCertList(o);

 return ret;
}

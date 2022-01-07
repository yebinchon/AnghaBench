
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X_SERIAL ;
typedef int X509 ;
typedef int X ;
typedef int UINT ;
typedef int NAME ;
typedef int K ;


 int * NewX509 (int *,int *,int *,int *,int ,int *) ;
 int * X509ToX (int *) ;

X *NewX(K *pub, K *priv, X *ca, NAME *name, UINT days, X_SERIAL *serial)
{
 X509 *x509;
 X *x;

 if (pub == ((void*)0) || priv == ((void*)0) || name == ((void*)0) || ca == ((void*)0))
 {
  return ((void*)0);
 }

 x509 = NewX509(pub, priv, ca, name, days, serial);
 if (x509 == ((void*)0))
 {
  return ((void*)0);
 }

 x = X509ToX(x509);

 if (x == ((void*)0))
 {
  return ((void*)0);
 }

 return x;
}

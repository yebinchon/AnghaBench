
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


 int * CloneX (int *) ;
 int FreeX (int *) ;
 int * NewRootX509 (int *,int *,int *,int ,int *) ;
 int * X509ToX (int *) ;

X *NewRootX(K *pub, K *priv, NAME *name, UINT days, X_SERIAL *serial)
{
 X509 *x509;
 X *x, *x2;

 if (pub == ((void*)0) || priv == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 x509 = NewRootX509(pub, priv, name, days, serial);
 if (x509 == ((void*)0))
 {
  return ((void*)0);
 }

 x = X509ToX(x509);
 if (x == ((void*)0))
 {
  return ((void*)0);
 }

 x2 = CloneX(x);
 FreeX(x);

 return x2;
}

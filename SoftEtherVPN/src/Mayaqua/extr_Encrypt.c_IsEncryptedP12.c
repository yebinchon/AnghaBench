
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef int P12 ;
typedef int K ;


 int FreeK (int *) ;
 int FreeX (int *) ;
 int ParseP12 (int *,int **,int **,int *) ;

bool IsEncryptedP12(P12 *p12)
{
 X *x;
 K *k;

 if (p12 == ((void*)0))
 {
  return 0;
 }

 if (ParseP12(p12, &x, &k, ((void*)0)) == 1)
 {
  FreeX(x);
  FreeK(k);
  return 0;
 }

 return 1;
}

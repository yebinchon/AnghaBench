
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pkcs12; } ;
typedef int PKCS12 ;
typedef TYPE_1__ P12 ;


 TYPE_1__* ZeroMalloc (int) ;

P12 *PKCS12ToP12(PKCS12 *pkcs12)
{
 P12 *p12;

 if (pkcs12 == ((void*)0))
 {
  return ((void*)0);
 }

 p12 = ZeroMalloc(sizeof(P12));
 p12->pkcs12 = pkcs12;

 return p12;
}

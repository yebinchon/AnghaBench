
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pkcs12; } ;
typedef TYPE_1__ P12 ;


 int Free (TYPE_1__*) ;
 int FreePKCS12 (int ) ;

void FreeP12(P12 *p12)
{

 if (p12 == ((void*)0))
 {
  return;
 }

 FreePKCS12(p12->pkcs12);
 Free(p12);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * Name; int * Serial; } ;
typedef TYPE_1__ CRL ;


 int Free (TYPE_1__*) ;
 int FreeName (int *) ;
 int FreeXSerial (int *) ;

void FreeCrl(CRL *crl)
{

 if (crl == ((void*)0))
 {
  return;
 }

 if (crl->Serial != ((void*)0))
 {
  FreeXSerial(crl->Serial);
 }

 if (crl->Name != ((void*)0))
 {
  FreeName(crl->Name);
 }

 Free(crl);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int do_not_free; int x509; int serial; } ;
typedef TYPE_1__ X ;


 int Free (TYPE_1__*) ;
 int FreeX509 (int ) ;
 int FreeXNames (TYPE_1__*) ;
 int FreeXSerial (int ) ;

void FreeX(X *x)
{

 if (x == ((void*)0))
 {
  return;
 }


 FreeXNames(x);



 FreeXSerial(x->serial);

 if (x->do_not_free == 0)
 {
  FreeX509(x->x509);
 }
 Free(x);
}

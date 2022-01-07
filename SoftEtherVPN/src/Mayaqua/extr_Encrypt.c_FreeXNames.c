
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * subject_name; int * issuer_name; } ;
typedef TYPE_1__ X ;


 int FreeName (int *) ;

void FreeXNames(X *x)
{

 if (x == ((void*)0))
 {
  return;
 }

 FreeName(x->issuer_name);
 x->issuer_name = ((void*)0);

 FreeName(x->subject_name);
 x->subject_name = ((void*)0);
}

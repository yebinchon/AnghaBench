
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Local; struct TYPE_4__* State; struct TYPE_4__* Country; struct TYPE_4__* Unit; struct TYPE_4__* Organization; struct TYPE_4__* CommonName; } ;
typedef TYPE_1__ NAME ;


 int Free (TYPE_1__*) ;

void FreeName(NAME *n)
{

 if (n == ((void*)0))
 {
  return;
 }


 Free(n->CommonName);
 Free(n->Organization);
 Free(n->Unit);
 Free(n->Country);
 Free(n->State);
 Free(n->Local);


 Free(n);

 return;
}

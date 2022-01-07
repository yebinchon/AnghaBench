
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pkey; } ;
typedef TYPE_1__ K ;


 int Free (TYPE_1__*) ;
 int FreePKey (int ) ;

void FreeK(K *k)
{

 if (k == ((void*)0))
 {
  return;
 }

 FreePKey(k->pkey);
 Free(k);
}

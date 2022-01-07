
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Lock; } ;
typedef TYPE_1__ HASH_LIST ;


 int Unlock (int ) ;

void UnlockHashList(HASH_LIST *h)
{

 if (h == ((void*)0))
 {
  return;
 }

 Unlock(h->Lock);
}

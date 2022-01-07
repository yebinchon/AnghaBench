
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_key_t ;
struct TYPE_3__ {int key; } ;


 void* pte_osTlsGetValue (int ) ;

void *pthread_getspecific (pthread_key_t key)
{
   if (key == ((void*)0))
      return ((void*)0);

   return pte_osTlsGetValue (key->key);
}

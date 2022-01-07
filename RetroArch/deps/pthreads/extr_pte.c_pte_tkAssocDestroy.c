
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* key; struct TYPE_8__* prevThread; struct TYPE_8__* nextThread; TYPE_1__* thread; struct TYPE_8__* prevKey; struct TYPE_8__* nextKey; } ;
typedef TYPE_3__ ThreadKeyAssoc ;
struct TYPE_7__ {TYPE_3__* threads; } ;
struct TYPE_6__ {TYPE_3__* nextAssoc; TYPE_3__* keys; } ;


 int free (TYPE_3__*) ;

void pte_tkAssocDestroy (ThreadKeyAssoc * assoc)
{
   ThreadKeyAssoc *prev = ((void*)0);
   ThreadKeyAssoc *next = ((void*)0);




   if (!assoc)
      return;


   prev = assoc->prevKey;
   next = assoc->nextKey;
   if (prev)
      prev->nextKey = next;
   if (next)
      next->prevKey = prev;


   if (assoc->thread->keys == assoc)
      assoc->thread->keys = next;

   if (assoc->thread->nextAssoc == assoc)
   {




      assoc->thread->nextAssoc = next;
   }


   prev = assoc->prevThread;
   next = assoc->nextThread;
   if (prev)
      prev->nextThread = next;
   if (next)
      next->prevThread = prev;


   if (assoc->key->threads == assoc)
      assoc->key->threads = next;

   free (assoc);
}

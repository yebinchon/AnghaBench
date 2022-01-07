
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* keys; } ;
typedef TYPE_1__ ptw32_thread_t ;
typedef TYPE_2__* pthread_key_t ;
struct TYPE_8__ {struct TYPE_8__* prevKey; struct TYPE_8__* nextKey; struct TYPE_8__* prevThread; struct TYPE_8__* nextThread; TYPE_2__* key; TYPE_1__* thread; } ;
typedef TYPE_3__ ThreadKeyAssoc ;
struct TYPE_7__ {void* threads; } ;


 int ENOMEM ;
 scalar_t__ calloc (int,int) ;

int
ptw32_tkAssocCreate (ptw32_thread_t * sp, pthread_key_t key)
{
  ThreadKeyAssoc *assoc;
  assoc = (ThreadKeyAssoc *) calloc (1, sizeof (*assoc));

  if (assoc == ((void*)0))
    {
      return ENOMEM;
    }

  assoc->thread = sp;
  assoc->key = key;




  assoc->prevThread = ((void*)0);
  assoc->nextThread = (ThreadKeyAssoc *) key->threads;
  if (assoc->nextThread != ((void*)0))
    {
      assoc->nextThread->prevThread = assoc;
    }
  key->threads = (void *) assoc;




  assoc->prevKey = ((void*)0);
  assoc->nextKey = (ThreadKeyAssoc *) sp->keys;
  if (assoc->nextKey != ((void*)0))
    {
      assoc->nextKey->prevKey = assoc;
    }
  sp->keys = (void *) assoc;

  return (0);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* upl_t ;
struct TYPE_9__ {scalar_t__ ref_count; scalar_t__ upl_iodone; } ;


 int upl_callout_iodone (TYPE_1__*) ;
 int upl_destroy (TYPE_1__*) ;
 int upl_lock (TYPE_1__*) ;
 int upl_unlock (TYPE_1__*) ;
 int vector_upl_deallocate (TYPE_1__*) ;
 scalar_t__ vector_upl_is_valid (TYPE_1__*) ;

void
upl_deallocate(upl_t upl)
{
 upl_lock(upl);

 if (--upl->ref_count == 0) {
  if(vector_upl_is_valid(upl))
   vector_upl_deallocate(upl);
  upl_unlock(upl);

  if (upl->upl_iodone)
          upl_callout_iodone(upl);

  upl_destroy(upl);
 } else
  upl_unlock(upl);
}

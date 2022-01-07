
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct affinity_set {int dummy; } ;
typedef TYPE_1__* affinity_set_t ;
struct TYPE_5__ {int aset_threads; } ;


 int DBG (char*,TYPE_1__*) ;
 int assert (int ) ;
 int kfree (TYPE_1__*,int) ;
 int queue_empty (int *) ;

__attribute__((used)) static void
affinity_set_free(affinity_set_t aset)
{
 assert(queue_empty(&aset->aset_threads));

 DBG("affinity_set_free(%p)\n", aset);
 kfree(aset, sizeof(struct affinity_set));
}

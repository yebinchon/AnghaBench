
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ aio_map; int aio_refcount; int * thread; } ;
typedef TYPE_1__ aio_workq_entry ;


 scalar_t__ VM_MAP_NULL ;
 int aio_workq_zonep ;
 int thread_deallocate (int *) ;
 int vm_map_deallocate (scalar_t__) ;
 int zfree (int ,TYPE_1__*) ;

__attribute__((used)) static int
aio_free_request(aio_workq_entry *entryp)
{

 if ( VM_MAP_NULL != entryp->aio_map) {
  vm_map_deallocate(entryp->aio_map);
 }


 if ( ((void*)0) != entryp->thread ) {
  thread_deallocate( entryp->thread );
 }

 entryp->aio_refcount = -1;

 zfree( aio_workq_zonep, entryp );

 return( 0 );

}

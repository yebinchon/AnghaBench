
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* ipc_pset_t ;
struct TYPE_7__ {int io_bits; } ;
struct TYPE_8__ {int ips_messages; TYPE_1__ ips_object; } ;


 int IO_BITS_ACTIVE ;
 int assert (int ) ;
 int imq_lock (int *) ;
 int imq_unlock (int *) ;
 int ipc_mqueue_changed (int *) ;
 int ipc_mqueue_deinit (int *) ;
 int ipc_mqueue_remove_all (int *) ;
 int ips_active (TYPE_2__*) ;
 int ips_release (TYPE_2__*) ;
 int ips_unlock (TYPE_2__*) ;

void
ipc_pset_destroy(
 ipc_pset_t pset)
{
 assert(ips_active(pset));

 pset->ips_object.io_bits &= ~IO_BITS_ACTIVE;





 ipc_mqueue_remove_all(&pset->ips_messages);





 imq_lock(&pset->ips_messages);
 ipc_mqueue_changed(&pset->ips_messages);
 imq_unlock(&pset->ips_messages);

 ipc_mqueue_deinit(&pset->ips_messages);

 ips_unlock(pset);
 ips_release(pset);
}

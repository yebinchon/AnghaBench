
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mach_port_seqno_t ;
typedef TYPE_1__* ipc_mqueue_t ;
struct TYPE_5__ {int imq_seqno; } ;


 int imq_lock (TYPE_1__*) ;
 int imq_unlock (TYPE_1__*) ;

void
ipc_mqueue_set_seqno(
 ipc_mqueue_t mqueue,
 mach_port_seqno_t seqno)
{
 imq_lock(mqueue);
 mqueue->imq_seqno = seqno;
 imq_unlock(mqueue);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* mount_t ;
struct TYPE_5__ {int * tqe_prev; int * tqe_next; } ;
struct TYPE_6__ {TYPE_1__ mnt_list; } ;


 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int mnt_list ;
 int mount_list_lock () ;
 int mount_list_unlock () ;
 int mountlist ;
 int nummounts ;

void
mount_list_remove(mount_t mp)
{
 mount_list_lock();
 TAILQ_REMOVE(&mountlist, mp, mnt_list);
 nummounts--;
 mp->mnt_list.tqe_next = ((void*)0);
 mp->mnt_list.tqe_prev = ((void*)0);
 mount_list_unlock();
}

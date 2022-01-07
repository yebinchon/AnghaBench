
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* stop_socket_select ) (int ) ;} ;
struct TYPE_7__ {TYPE_1__ vfs; } ;
typedef TYPE_2__ vfs_entry_t ;
struct TYPE_8__ {int sem; scalar_t__ is_sem_local; } ;
typedef TYPE_3__ esp_vfs_select_sem_t ;


 TYPE_2__** s_vfs ;
 int s_vfs_count ;
 int stub1 (int ) ;
 int xSemaphoreGive (int ) ;

void esp_vfs_select_triggered(esp_vfs_select_sem_t sem)
{
    if (sem.is_sem_local) {
        xSemaphoreGive(sem.sem);
    } else {



        for (int i = 0; i < s_vfs_count; ++i) {


            const vfs_entry_t *vfs = s_vfs[i];
            if (vfs != ((void*)0) && vfs->vfs.stop_socket_select != ((void*)0)) {
                vfs->vfs.stop_socket_select(sem.sem);
                break;
            }
        }
    }
}

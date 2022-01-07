
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* work; struct TYPE_5__* cache; struct TYPE_5__* fds; int lock; struct TYPE_5__* fs; } ;
typedef TYPE_1__ esp_spiffs_t ;


 int SPIFFS_unmount (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int vSemaphoreDelete (int ) ;

__attribute__((used)) static void esp_spiffs_free(esp_spiffs_t ** efs)
{
    esp_spiffs_t * e = *efs;
    if (*efs == ((void*)0)) {
        return;
    }
    *efs = ((void*)0);

    if (e->fs) {
        SPIFFS_unmount(e->fs);
        free(e->fs);
    }
    vSemaphoreDelete(e->lock);
    free(e->fds);
    free(e->cache);
    free(e->work);
    free(e);
}

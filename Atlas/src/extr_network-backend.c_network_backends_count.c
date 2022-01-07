
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int backends_mutex; TYPE_1__* backends; } ;
typedef TYPE_2__ network_backends_t ;
typedef int guint ;
struct TYPE_4__ {int len; } ;


 int g_mutex_lock (int ) ;
 int g_mutex_unlock (int ) ;

guint network_backends_count(network_backends_t *bs) {
 guint len;

 g_mutex_lock(bs->backends_mutex);
 len = bs->backends->len;
 g_mutex_unlock(bs->backends_mutex);

 return len;
}

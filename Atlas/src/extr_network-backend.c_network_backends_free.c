
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* raw_pwds; TYPE_3__* raw_ips; struct TYPE_5__* default_file; int global_wrr; int backends_mutex; TYPE_3__* backends; } ;
typedef TYPE_1__ network_backends_t ;
typedef int network_backend_t ;
typedef size_t gsize ;
struct TYPE_6__ {size_t len; int ** pdata; } ;


 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_mutex_free (int ) ;
 int g_mutex_lock (int ) ;
 int g_mutex_unlock (int ) ;
 int g_ptr_array_free (TYPE_3__*,int ) ;
 int g_wrr_poll_free (int ) ;
 int network_backend_free (int *) ;

void network_backends_free(network_backends_t *bs) {
 gsize i;

 if (!bs) return;

 g_mutex_lock(bs->backends_mutex);
 for (i = 0; i < bs->backends->len; i++) {
  network_backend_t *backend = bs->backends->pdata[i];

  network_backend_free(backend);
 }
 g_mutex_unlock(bs->backends_mutex);

 g_ptr_array_free(bs->backends, TRUE);
 g_mutex_free(bs->backends_mutex);

 g_wrr_poll_free(bs->global_wrr);
 g_free(bs->default_file);

 g_ptr_array_free(bs->raw_ips, TRUE);
 g_ptr_array_free(bs->raw_pwds, TRUE);

 g_free(bs);
}

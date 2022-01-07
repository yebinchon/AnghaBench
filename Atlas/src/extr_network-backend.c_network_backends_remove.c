
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int backends_mutex; TYPE_4__* backends; } ;
typedef TYPE_1__ network_backends_t ;
struct TYPE_6__ {scalar_t__ uuid; scalar_t__ addr; } ;
typedef TYPE_2__ network_backend_t ;
typedef size_t guint ;
struct TYPE_7__ {TYPE_2__** pdata; } ;


 int TRUE ;
 int g_mutex_lock (int ) ;
 int g_mutex_unlock (int ) ;
 int g_ptr_array_remove_index (TYPE_4__*,size_t) ;
 int g_string_free (scalar_t__,int ) ;
 int network_address_free (scalar_t__) ;

int network_backends_remove(network_backends_t *bs, guint index) {
 network_backend_t* b = bs->backends->pdata[index];
 if (b != ((void*)0)) {
  if (b->addr) network_address_free(b->addr);
  if (b->uuid) g_string_free(b->uuid, TRUE);
  g_mutex_lock(bs->backends_mutex);
  g_ptr_array_remove_index(bs->backends, index);
  g_mutex_unlock(bs->backends_mutex);
 }
 return 0;
}

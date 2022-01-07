
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int backends_mutex; TYPE_7__* backends; int event_thread_count; } ;
typedef TYPE_1__ network_backends_t ;
struct TYPE_10__ {scalar_t__ type; size_t weight; TYPE_6__* addr; } ;
typedef TYPE_2__ network_backend_t ;
typedef size_t guint ;
typedef int gint ;
typedef char gchar ;
typedef scalar_t__ backend_type_t ;
struct TYPE_12__ {size_t len; TYPE_2__** pdata; } ;
struct TYPE_11__ {int name; } ;


 scalar_t__ BACKEND_TYPE_RO ;
 scalar_t__ BACKEND_TYPE_RW ;
 int S (int ) ;
 size_t atoi (char*) ;
 int g_critical (char*,char*) ;
 int g_message (char*,char*,char*) ;
 int g_mutex_lock (int ) ;
 int g_mutex_unlock (int ) ;
 int g_ptr_array_add (TYPE_7__*,TYPE_2__*) ;
 scalar_t__ network_address_set_address (TYPE_6__*,char*) ;
 int network_backend_free (TYPE_2__*) ;
 TYPE_2__* network_backend_new (int ) ;
 scalar_t__ strleq (int ,int ) ;
 char* strrchr (char*,char) ;

int network_backends_add(network_backends_t *bs, gchar *address, backend_type_t type) {
 network_backend_t *new_backend;
 guint i;

 new_backend = network_backend_new(bs->event_thread_count);
 new_backend->type = type;

 gchar *p = ((void*)0);
 if (type == BACKEND_TYPE_RO) {
  guint weight = 1;
  p = strrchr(address, '@');
  if (p != ((void*)0)) {
   *p = '\0';
   weight = atoi(p+1);
  }
  new_backend->weight = weight;
 }

 if (0 != network_address_set_address(new_backend->addr, address)) {
  network_backend_free(new_backend);
  return -1;
 }


 g_mutex_lock(bs->backends_mutex);
 gint first_slave = -1;
 for (i = 0; i < bs->backends->len; i++) {
  network_backend_t *old_backend = bs->backends->pdata[i];

  if (first_slave == -1 && old_backend->type == BACKEND_TYPE_RO) first_slave = i;

  if (old_backend->type == type && strleq(S(old_backend->addr->name), S(new_backend->addr->name))) {
   network_backend_free(new_backend);

   g_mutex_unlock(bs->backends_mutex);
   g_critical("backend %s is already known!", address);
   return -1;
  }
 }

 g_ptr_array_add(bs->backends, new_backend);
 if (first_slave != -1 && type == BACKEND_TYPE_RW) {
  network_backend_t *temp_backend = bs->backends->pdata[first_slave];
  bs->backends->pdata[first_slave] = bs->backends->pdata[bs->backends->len - 1];
  bs->backends->pdata[bs->backends->len - 1] = temp_backend;
 }
 g_mutex_unlock(bs->backends_mutex);

 g_message("added %s backend: %s", (type == BACKEND_TYPE_RW) ? "read/write" : "read-only", address);

 if (p != ((void*)0)) *p = '@';

 return 0;
}

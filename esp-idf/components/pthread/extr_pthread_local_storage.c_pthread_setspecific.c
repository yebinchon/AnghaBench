
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int values_list_t ;
struct TYPE_7__ {void* value; int key; } ;
typedef TYPE_1__ value_entry_t ;
typedef int pthread_key_t ;
typedef int key_entry_t ;


 int ENOENT ;
 int ENOMEM ;
 int PTHREAD_TLS_INDEX ;
 int SLIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int SLIST_REMOVE (int *,TYPE_1__*,int ,int ) ;
 int * calloc (int,int) ;
 int * find_key (int ) ;
 TYPE_1__* find_value (int *,int ) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int next ;
 int pthread_local_storage_thread_deleted_callback ;
 int * pvTaskGetThreadLocalStoragePointer (int *,int ) ;
 int vTaskSetThreadLocalStoragePointer (int *,int ,int *) ;
 int vTaskSetThreadLocalStoragePointerAndDelCallback (int *,int ,int *,int ) ;
 int value_entry_t_ ;

int pthread_setspecific(pthread_key_t key, const void *value)
{
    key_entry_t *key_entry = find_key(key);
    if (key_entry == ((void*)0)) {
        return ENOENT;
    }

    values_list_t *tls = pvTaskGetThreadLocalStoragePointer(((void*)0), PTHREAD_TLS_INDEX);
    if (tls == ((void*)0)) {
        tls = calloc(1, sizeof(values_list_t));
        if (tls == ((void*)0)) {
            return ENOMEM;
        }



        vTaskSetThreadLocalStoragePointerAndDelCallback(((void*)0),
                                                        PTHREAD_TLS_INDEX,
                                                        tls,
                                                        pthread_local_storage_thread_deleted_callback);

    }

    value_entry_t *entry = find_value(tls, key);
    if (entry != ((void*)0)) {
        if (value != ((void*)0)) {


            entry->value = (void *) value;
        } else {
            SLIST_REMOVE(tls, entry, value_entry_t_, next);
            free(entry);
        }
    } else if (value != ((void*)0)) {
        entry = malloc(sizeof(value_entry_t));
        if (entry == ((void*)0)) {
            return ENOMEM;
        }
        entry->key = key;
        entry->value = (void *) value;
        SLIST_INSERT_HEAD(tls, entry, next);
    }

    return 0;
}

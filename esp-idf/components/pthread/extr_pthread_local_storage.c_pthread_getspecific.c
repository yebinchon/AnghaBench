
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int values_list_t ;
struct TYPE_3__ {void* value; } ;
typedef TYPE_1__ value_entry_t ;
typedef int pthread_key_t ;


 int PTHREAD_TLS_INDEX ;
 TYPE_1__* find_value (int *,int ) ;
 scalar_t__ pvTaskGetThreadLocalStoragePointer (int *,int ) ;

void *pthread_getspecific(pthread_key_t key)
{
    values_list_t *tls = (values_list_t *) pvTaskGetThreadLocalStoragePointer(((void*)0), PTHREAD_TLS_INDEX);
    if (tls == ((void*)0)) {
        return ((void*)0);
    }

    value_entry_t *entry = find_value(tls, key);
    if(entry != ((void*)0)) {
        return entry->value;
    }
    return ((void*)0);
}

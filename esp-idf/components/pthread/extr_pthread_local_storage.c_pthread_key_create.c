
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pthread_key_t ;
typedef int pthread_destructor_t ;
struct TYPE_5__ {int key; int destructor; } ;
typedef TYPE_1__ key_entry_t ;


 int ENOMEM ;
 TYPE_1__* SLIST_FIRST (int *) ;
 int SLIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 TYPE_1__* malloc (int) ;
 int next ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int s_keys ;
 int s_keys_lock ;

int pthread_key_create(pthread_key_t *key, pthread_destructor_t destructor)
{
    key_entry_t *new_key = malloc(sizeof(key_entry_t));
    if (new_key == ((void*)0)) {
        return ENOMEM;
    }

    portENTER_CRITICAL(&s_keys_lock);

    const key_entry_t *head = SLIST_FIRST(&s_keys);
    new_key->key = (head == ((void*)0)) ? 1 : (head->key + 1);
    new_key->destructor = destructor;
    *key = new_key->key;

    SLIST_INSERT_HEAD(&s_keys, new_key, next);

    portEXIT_CRITICAL(&s_keys_lock);
    return 0;
}

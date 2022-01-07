
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_key_t ;
typedef int key_entry_t ;


 int SLIST_REMOVE (int *,int *,int ,int ) ;
 int * find_key (int ) ;
 int free (int *) ;
 int key_entry_t_ ;
 int next ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int s_keys ;
 int s_keys_lock ;

int pthread_key_delete(pthread_key_t key)
{

    portENTER_CRITICAL(&s_keys_lock);





    key_entry_t *entry = find_key(key);
    if (entry != ((void*)0)) {
        SLIST_REMOVE(&s_keys, entry, key_entry_t_, next);
        free(entry);
    }

    portEXIT_CRITICAL(&s_keys_lock);

    return 0;
}

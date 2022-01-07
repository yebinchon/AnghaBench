
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int value; int key; } ;
typedef TYPE_1__ values_list_t ;
typedef TYPE_1__ value_entry_t ;
struct TYPE_11__ {int (* destructor ) (int ) ;} ;
typedef TYPE_3__ key_entry_t ;


 TYPE_1__* SLIST_FIRST (TYPE_1__*) ;
 TYPE_1__* SLIST_NEXT (TYPE_1__*,int ) ;
 int assert (int ) ;
 TYPE_3__* find_key (int ) ;
 int free (TYPE_1__*) ;
 int next ;
 int stub1 (int ) ;

__attribute__((used)) static void pthread_local_storage_thread_deleted_callback(int index, void *v_tls)
{
    values_list_t *tls = (values_list_t *)v_tls;
    assert(tls != ((void*)0));


    value_entry_t *entry = SLIST_FIRST(tls);
    while(entry != ((void*)0)) {



        key_entry_t *key = find_key(entry->key);
        if (key != ((void*)0) && key->destructor != ((void*)0)) {
            key->destructor(entry->value);
        }
        value_entry_t *next_entry = SLIST_NEXT(entry, next);
        free(entry);
        entry = next_entry;
    }
    free(tls);
}

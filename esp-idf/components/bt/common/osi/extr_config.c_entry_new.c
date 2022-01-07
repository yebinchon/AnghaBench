
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* value; void* key; } ;
typedef TYPE_1__ entry_t ;


 TYPE_1__* osi_calloc (int) ;
 void* osi_strdup (char const*) ;

__attribute__((used)) static entry_t *entry_new(const char *key, const char *value)
{
    entry_t *entry = osi_calloc(sizeof(entry_t));
    if (!entry) {
        return ((void*)0);
    }

    entry->key = osi_strdup(key);
    entry->value = osi_strdup(value);
    return entry;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* label; scalar_t__ flash_chip; scalar_t__ address; scalar_t__ size; scalar_t__ encrypted; int subtype; int type; } ;
typedef TYPE_1__ esp_partition_t ;
typedef int * esp_partition_iterator_t ;


 int assert (int ) ;
 int * esp_partition_find (int ,int ,char const*) ;
 TYPE_1__* esp_partition_get (int *) ;
 int esp_partition_iterator_release (int *) ;
 int * esp_partition_next (int *) ;
 scalar_t__ strlen (char*) ;

const esp_partition_t *esp_partition_verify(const esp_partition_t *partition)
{
    assert(partition != ((void*)0));
    const char *label = (strlen(partition->label) > 0) ? partition->label : ((void*)0);
    esp_partition_iterator_t it = esp_partition_find(partition->type,
                                                     partition->subtype,
                                                     label);
    while (it != ((void*)0)) {
        const esp_partition_t *p = esp_partition_get(it);

        if (p->flash_chip == partition->flash_chip
            && p->address == partition->address
            && partition->size == p->size
            && partition->encrypted == p->encrypted) {
            esp_partition_iterator_release(it);
            return p;
        }
        it = esp_partition_next(it);
    }
    esp_partition_iterator_release(it);
    return ((void*)0);
}

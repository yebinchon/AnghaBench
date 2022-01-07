
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_partition_t ;
typedef TYPE_1__* esp_partition_iterator_t ;
struct TYPE_3__ {int const* info; } ;


 int assert (int ) ;

const esp_partition_t* esp_partition_get(esp_partition_iterator_t iterator)
{
    assert(iterator != ((void*)0));
    return iterator->info;
}

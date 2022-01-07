
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_iterator_t ;


 int free (int ) ;

void esp_partition_iterator_release(esp_partition_iterator_t iterator)
{

    free(iterator);
}

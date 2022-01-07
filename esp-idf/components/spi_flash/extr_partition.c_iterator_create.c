
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_partition_type_t ;
typedef int esp_partition_subtype_t ;
struct TYPE_3__ {char const* label; int * info; int next_item; int subtype; int type; } ;
typedef TYPE_1__ esp_partition_iterator_opaque_t ;


 int SLIST_FIRST (int *) ;
 scalar_t__ malloc (int) ;
 int s_partition_list ;

__attribute__((used)) static esp_partition_iterator_opaque_t* iterator_create(esp_partition_type_t type,
        esp_partition_subtype_t subtype, const char* label)
{
    esp_partition_iterator_opaque_t* it =
            (esp_partition_iterator_opaque_t*) malloc(sizeof(esp_partition_iterator_opaque_t));
    it->type = type;
    it->subtype = subtype;
    it->label = label;
    it->next_item = SLIST_FIRST(&s_partition_list);
    it->info = ((void*)0);
    return it;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t count; struct TYPE_5__* items; } ;
typedef TYPE_1__ JSON_ARRAY ;


 int JsonFree (TYPE_1__) ;
 int parson_free (TYPE_1__*) ;

__attribute__((used)) static void json_array_free(JSON_ARRAY *array) {
 UINT i;
 for (i = 0; i < array->count; i++) {
  JsonFree(array->items[i]);
 }
 parson_free(array->items);
 parson_free(array);
}

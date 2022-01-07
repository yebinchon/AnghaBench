
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int * parent; } ;
typedef TYPE_1__ JSON_VALUE ;
typedef int JSON_ARRAY ;


 int JSON_RET_ERROR ;
 int json_array_add (int *,TYPE_1__*) ;

UINT JsonArrayAdd(JSON_ARRAY *array, JSON_VALUE *value) {
 if (array == ((void*)0) || value == ((void*)0) || value->parent != ((void*)0)) {
  return JSON_RET_ERROR;
 }
 return json_array_add(array, value);
}

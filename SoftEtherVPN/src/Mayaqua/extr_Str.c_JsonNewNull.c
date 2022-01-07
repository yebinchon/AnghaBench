
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int * parent; } ;
typedef TYPE_1__ JSON_VALUE ;


 int JSON_TYPE_NULL ;
 scalar_t__ parson_malloc (int) ;

JSON_VALUE * JsonNewNull(void) {
 JSON_VALUE *new_value = (JSON_VALUE*)parson_malloc(sizeof(JSON_VALUE));
 if (!new_value) {
  return ((void*)0);
 }
 new_value->parent = ((void*)0);
 new_value->type = JSON_TYPE_NULL;
 return new_value;
}

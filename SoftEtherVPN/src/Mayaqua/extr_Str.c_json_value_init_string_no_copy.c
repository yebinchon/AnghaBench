
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* string; } ;
struct TYPE_5__ {TYPE_1__ value; int type; int * parent; } ;
typedef TYPE_2__ JSON_VALUE ;


 int JSON_TYPE_STRING ;
 scalar_t__ parson_malloc (int) ;

__attribute__((used)) static JSON_VALUE * json_value_init_string_no_copy(char *string) {
 JSON_VALUE *new_value = (JSON_VALUE*)parson_malloc(sizeof(JSON_VALUE));
 if (!new_value) {
  return ((void*)0);
 }
 new_value->parent = ((void*)0);
 new_value->type = JSON_TYPE_STRING;
 new_value->value.string = string;
 return new_value;
}

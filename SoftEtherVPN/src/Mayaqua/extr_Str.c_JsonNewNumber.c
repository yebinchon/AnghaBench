
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_4__ {int number; } ;
struct TYPE_5__ {TYPE_1__ value; int type; int * parent; } ;
typedef TYPE_2__ JSON_VALUE ;


 int JSON_TYPE_NUMBER ;
 scalar_t__ parson_malloc (int) ;

JSON_VALUE * JsonNewNumber(UINT64 number) {
 JSON_VALUE *new_value = ((void*)0);
 new_value = (JSON_VALUE*)parson_malloc(sizeof(JSON_VALUE));
 if (new_value == ((void*)0)) {
  return ((void*)0);
 }
 new_value->parent = ((void*)0);
 new_value->type = JSON_TYPE_NUMBER;
 new_value->value.number = number;
 return new_value;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* string; } ;
struct TYPE_6__ {TYPE_1__ value; } ;
typedef TYPE_2__ JSON_VALUE ;


 scalar_t__ JSON_TYPE_STRING ;
 scalar_t__ JsonValueGetType (TYPE_2__*) ;

char * JsonValueGetStr(JSON_VALUE *value) {
 return JsonValueGetType(value) == JSON_TYPE_STRING ? value->value.string : ((void*)0);
}

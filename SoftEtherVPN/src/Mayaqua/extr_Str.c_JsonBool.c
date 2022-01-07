
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_VALUE ;


 int JsonValueGetBool (int *) ;

int JsonBool(JSON_VALUE *value) {
 return JsonValueGetBool(value);
}

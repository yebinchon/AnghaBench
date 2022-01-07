
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_VALUE ;
typedef int JSON_ARRAY ;


 int * JsonValueGetArray (int *) ;

JSON_ARRAY * JsonArray(JSON_VALUE *value) {
 return JsonValueGetArray(value);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_ARRAY ;


 int JsonArrayGet (int *,int ) ;
 int * JsonValueGetArray (int ) ;

JSON_ARRAY * JsonArrayGetArray(JSON_ARRAY *array, UINT index) {
 return JsonValueGetArray(JsonArrayGet(array, index));
}

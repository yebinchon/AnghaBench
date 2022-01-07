
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_OBJECT ;
typedef int JSON_ARRAY ;


 int JsonArrayGet (int *,int ) ;
 int * JsonValueGetObject (int ) ;

JSON_OBJECT * JsonArrayGetObj(JSON_ARRAY *array, UINT index) {
 return JsonValueGetObject(JsonArrayGet(array, index));
}

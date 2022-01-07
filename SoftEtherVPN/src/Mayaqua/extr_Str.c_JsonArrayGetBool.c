
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_ARRAY ;


 int JsonArrayGet (int *,int ) ;
 int JsonValueGetBool (int ) ;

bool JsonArrayGetBool(JSON_ARRAY *array, UINT index) {
 return JsonValueGetBool(JsonArrayGet(array, index));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT ;
typedef int JSON_ARRAY ;


 int JsonArrayGet (int *,int ) ;
 int JsonValueGetNumber (int ) ;

UINT64 JsonArrayGetNumber(JSON_ARRAY *array, UINT index) {
 return JsonValueGetNumber(JsonArrayGet(array, index));
}

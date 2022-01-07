
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_ARRAY ;


 int JsonArrayGet (int *,int ) ;
 char* JsonValueGetStr (int ) ;

char * JsonArrayGetStr(JSON_ARRAY *array, UINT index) {
 return JsonValueGetStr(JsonArrayGet(array, index));
}

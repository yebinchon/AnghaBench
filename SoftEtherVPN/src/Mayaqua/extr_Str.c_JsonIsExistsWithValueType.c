
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;


 int * JsonGet (int *,char*) ;
 scalar_t__ JsonValueGetType (int *) ;

int JsonIsExistsWithValueType(JSON_OBJECT *object, char *name, UINT type) {
 JSON_VALUE *val = JsonGet(object, name);
 return val != ((void*)0) && JsonValueGetType(val) == type;
}

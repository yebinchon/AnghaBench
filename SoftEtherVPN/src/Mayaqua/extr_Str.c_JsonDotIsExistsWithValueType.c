
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;


 int * JsonDotGet (int *,char*) ;
 scalar_t__ JsonValueGetType (int *) ;

int JsonDotIsExistsWithValueType(JSON_OBJECT *object, char *name, UINT type) {
 JSON_VALUE *val = JsonDotGet(object, name);
 return val != ((void*)0) && JsonValueGetType(val) == type;
}

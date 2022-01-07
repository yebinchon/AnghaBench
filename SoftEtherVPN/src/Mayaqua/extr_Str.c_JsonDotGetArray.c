
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_OBJECT ;
typedef int JSON_ARRAY ;


 int JsonDotGet (int *,char*) ;
 int * JsonValueGetArray (int ) ;

JSON_ARRAY * JsonDotGetArray(JSON_OBJECT *object, char *name) {
 return JsonValueGetArray(JsonDotGet(object, name));
}

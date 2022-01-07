
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_OBJECT ;
typedef int JSON_ARRAY ;


 int JsonGet (int *,char*) ;
 int * JsonValueGetArray (int ) ;

JSON_ARRAY * JsonGetArray(JSON_OBJECT *object, char *name) {
 return JsonValueGetArray(JsonGet(object, name));
}

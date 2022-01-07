
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_OBJECT ;


 int JsonGet (int *,char*) ;
 int * JsonValueGetObject (int ) ;

JSON_OBJECT * JsonGetObj(JSON_OBJECT *object, char *name) {
 return JsonValueGetObject(JsonGet(object, name));
}

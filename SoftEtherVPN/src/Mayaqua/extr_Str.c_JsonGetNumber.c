
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int JSON_OBJECT ;


 int JsonGet (int *,char*) ;
 int JsonValueGetNumber (int ) ;

UINT64 JsonGetNumber(JSON_OBJECT *object, char *name) {
 return JsonValueGetNumber(JsonGet(object, name));
}
